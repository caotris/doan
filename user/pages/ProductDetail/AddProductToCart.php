<?php
include "../../../common/config/Connect.php";

$cartId = '';
// Check if the cookie is set
if (isset($_COOKIE['cartId'])) {
    // Cookie exists
    $cartId = $_COOKIE['cartId'];
} else {
    $cartId = generateUuid();
    setcookie('cartId', $cartId, time() + (365 * 24 * 60 * 60), '/');
}

function generateUuid()
{
    $data = random_bytes(16);

    $data[6] = chr(ord($data[6]) & 0x0F | 0x40);
    $data[8] = chr(ord($data[8]) & 0x3F | 0x80);

    $uuid = vsprintf('%s%s-%s-%s-%s-%s%s%s', str_split(bin2hex($data), 4));

    return $uuid;
}

if (isset($_POST['addToCart'])) {
    $productId = $_GET['productId'];
    $quantity = (int)$_POST['quantity'];
    $selectedSize = $_POST['selectedSize'];
    $price = $_POST['price'];

    // Truy vấn số lượng tồn kho
    $checkStockQuery = "SELECT quantity FROM tbl_product_size WHERE product_id = '$productId' AND size_id = '$selectedSize'";
    $result = mysqli_query($connect, $checkStockQuery);

    if ($result && mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $stockQuantity = (int)$row['quantity'];

        if ($quantity <= $stockQuantity) {
            // Thêm vào giỏ hàng
            $addProductToCart = "INSERT INTO tbl_cart_detail(cart_id, product_id, size_id, quantity, unit_price)
                                 VALUES ('$cartId', '$productId', '$selectedSize', $quantity, $price)";
            mysqli_query($connect, $addProductToCart);
            
            header('Location:../../userCommon/UserIndex.php?usingPage=cart');
        } else {
            echo "<script>
                alert('Số lượng bạn chọn vượt quá tồn kho hiện có ($stockQuantity sản phẩm)');
                window.location.href = '../../userCommon/UserIndex.php?usingPage=product&id=$productId';
            </script>";
        }
    } else {
        echo "<script>alert('Không tìm thấy thông tin tồn kho cho sản phẩm này');</script>";
    }
    
}