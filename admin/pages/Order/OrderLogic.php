<?php
include "../../../common/config/Connect.php";

function generateUuid()
{
    $data = random_bytes(16);
    $data[6] = chr(ord($data[6]) & 0x0F | 0x40);
    $data[8] = chr(ord($data[8]) & 0x3F | 0x80);
    return vsprintf('%s%s-%s-%s-%s-%s%s%s', str_split(bin2hex($data), 4));
}

function handleDeleteOrderDetail($orderId, $productId, $sizeId, $quantity)
{
    $sql = "DELETE FROM tbl_order_detail 
            WHERE order_id = '$orderId' 
              AND size_id = '$sizeId' 
              AND product_id = '$productId' 
              AND quantity = '$quantity'";
    mysqli_query($GLOBALS['connect'], $sql);

    $updateQty = "UPDATE tbl_product_size 
                  SET quantity = quantity + $quantity 
                  WHERE product_id = '$productId' 
                    AND size_id = '$sizeId'";
    mysqli_query($GLOBALS['connect'], $updateQty);
}

function handleTransitionAction($connect, $orderId, $oldStatus, $newStatus)
{
    $transitionActions = [
        ['from' => 'f1e30780-f494-477d-8fba-63d280843c91', 'to' => '30928569-9d4c-4e24-a2f5-447a1cc895b5', 'action' => 'subtract_quantity'], // S1 → S2
        ['from' => '30928569-9d4c-4e24-a2f5-447a1cc895b5', 'to' => '9a489221-786a-460f-8a64-6e6ce14d9f17', 'action' => 'mark_shipping'],      // S2 → S3
        ['from' => '9a489221-786a-460f-8a64-6e6ce14d9f17', 'to' => '90c85a89-3fae-45cd-a0f4-986176ee3d19', 'action' => 'mark_delivered'],       // S3 → S4
        ['from' => 'f1e30780-f494-477d-8fba-63d280843c91', 'to' => 'f531eeb6-9f6e-4d3a-9ce3-9b7a30ea40fc', 'action' => 'cancel_nothing'],      // S1 → S5
        ['from' => '30928569-9d4c-4e24-a2f5-447a1cc895b5', 'to' => 'f531eeb6-9f6e-4d3a-9ce3-9b7a30ea40fc', 'action' => 'cancel_and_restore'],   // S2 → S5
    ];

    foreach ($transitionActions as $rule) {
        if ($rule['from'] === $oldStatus && $rule['to'] === $newStatus) {
            $action = $rule['action'];
            break;
        }
    }

    if (!isset($action)) return;

    switch ($action) {
        case 'subtract_quantity':
            $sql = "SELECT * FROM tbl_order_detail WHERE order_id = '$orderId'";
            $results = mysqli_query($connect, $sql);
            while ($item = mysqli_fetch_assoc($results)) {
                $updateQtySQL = "UPDATE tbl_product_size 
                                 SET quantity = quantity - {$item['quantity']} 
                                 WHERE product_id = '{$item['product_id']}' 
                                   AND size_id = '{$item['size_id']}'";
                mysqli_query($connect, $updateQtySQL);
            }
            break;

        case 'cancel_and_restore':
            $sql = "SELECT * FROM tbl_order_detail WHERE order_id = '$orderId'";
            $results = mysqli_query($connect, $sql);
            while ($item = mysqli_fetch_assoc($results)) {
                $updateQtySQL = "UPDATE tbl_product_size 
                                 SET quantity = quantity + {$item['quantity']} 
                                 WHERE product_id = '{$item['product_id']}' 
                                   AND size_id = '{$item['size_id']}'";
                mysqli_query($connect, $updateQtySQL);
            }
            break;

        case 'cancel_nothing':
        case 'mark_shipping':
        case 'mark_delivered':
            // Không thay đổi số lượng, chỉ ghi log nếu cần
            break;
    }
}

if (isset($_POST['editOrder'])) {
    $orderId = $_GET['orderId'];
    $receivePhone = $_POST['receivePhone'];
    $diachinhan = $_POST['diachinhan'];
    $phigiaohang = $_POST['phigiaohang'];
    $mota = $_POST['mota'];
    $userId = $_POST['userId'];
    $status_id = $_POST['statusId'];

    // Lấy trạng thái cũ
    $getOldStatusSQL = "SELECT status_id FROM tbl_order WHERE id = '$orderId'";
    $oldStatusResult = mysqli_query($connect, $getOldStatusSQL);
    $oldStatus = mysqli_fetch_assoc($oldStatusResult)['status_id'];

    // Xử lý logic chuyển trạng thái
    handleTransitionAction($connect, $orderId, $oldStatus, $status_id);

    // Cập nhật đơn hàng
    $sql_editOrder = "UPDATE tbl_order 
        SET 
            receive_phone = '$receivePhone',
            receive_address = '$diachinhan',
            delivery_cost = '$phigiaohang',
            user_id = '$userId',
            status_id = '$status_id',
            description = '$mota'
        WHERE id = '$orderId'";
    
    mysqli_query($connect, $sql_editOrder);

} else if (isset($_POST['deleteOrder'])) {
    $orderId = $_GET['orderId'];

    $getOrderDetailInOrderSQL = "SELECT * FROM tbl_order_detail WHERE order_id = '$orderId'";
    $orderDetailData = mysqli_query($connect, $getOrderDetailInOrderSQL);

    while ($orderDetail = mysqli_fetch_array($orderDetailData)) {
        handleDeleteOrderDetail(
            $orderId,
            $orderDetail['product_id'],
            $orderDetail['size_id'],
            $orderDetail['quantity']
        );
    }

    $deleteOrderSQL = "DELETE FROM tbl_order WHERE id = '$orderId'";
    mysqli_query($connect, $deleteOrderSQL);
}

header('Location:../../AdminIndex.php?workingPage=order');
