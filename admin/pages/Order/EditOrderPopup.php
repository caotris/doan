<div class="modal fade" id="editPopup_<?php echo $row['id']; ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <form method="POST" action="pages/Order/OrderLogic.php?orderId=<?php echo $row['id']; ?>" enctype="multipart/form-data">
            <div class="modal-content">
                <div class="modal-header bg-dark">
                    <h5 class="text-center text-white">Sửa đơn hàng <?php echo $row['code']; ?></h5>

                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <table border="1" width="100%" padding="10px" style="border-collapse: collapse;">
                        <tr>
                            <td class="row">
                                <div class="mb-2 col col-12 col-md-6">
                                    <label class="form-label">Người đặt hàng</label>
                                    <select disabled name="userId" class="form-select" aria-label="Default select example">
                                        <?php
                                        $sql_user = "SELECT * FROM tbl_user";
                                        $query_user = mysqli_query($connect, $sql_user);
                                        while ($row_user = mysqli_fetch_array($query_user)) {
                                            $hadSet = false;
                                            if ($row_user['user_id'] == $row['user_id']) $hadSet = true;
                                        ?>
                                            <option class="p-2" value="<?php echo $row_user['id'] ?>" <?php if ($hadSet) echo 'checked'; ?>>
                                                <?php
                                                if (trim($row_user['fullname']) == "") {
                                                    echo $row_user['username'];
                                                } else {
                                                    echo $row_user['fullname'] . ' - ' . $row_user['username'];
                                                }
                                                ?>
                                            </option>
                                        <?php
                                        }
                                        ?>
                                    </select>
                                    <input type="hidden" name="userId" value="<?= $row['user_id']?>" />
                                </div>

                                <div class="mb-2 col-6">
                                    <label class="form-label">Trạng thái đơn hàng</label>
                                    <select name="statusId" class="form-select" aria-label="Default select example"
                                        <?php if ($row['status_id'] === '10dcaad2-8c9e-4078-85b4-8fbd6ed50c26') echo 'disabled'; 
                                        else if ($row['status_id'] === '2fb6fe9b-c49c-4358-8dc1-943e20f5f094') echo 'disabled' ;
                                        ?>>
                                        <option value="">Chưa chọn</option>
                                        <?php
                                        $sql_status = "SELECT * FROM tbl_status";
                                        $query_status = mysqli_query($connect, $sql_status);
                                        while ($row_status = mysqli_fetch_array($query_status)) {
                                            $hasChosen = false;
                                            if ($row_status['id'] == $row['status_id']) $hasChosen = true;
                                        ?>
                                            <option class="p-2" value="<?php echo $row_status['id'] ?>" <?php if ($hasChosen) echo 'selected'; ?>>
                                                <?php echo $row_status['name'] ?>
                                            </option>
                                        <?php
                                        }
                                        ?>
                                    </select>
                                </div>

                            </td>
                        </tr>
                        <tr>
                            <td class="row">
                                <div class="mb-2 col col-12 col-md-6">
                                    <label for="code" class="form-label">Mã đơn hàng</label>
                                    <input disabled name="code" type="text" class="form-control" id="code" value="<?php echo $row['code'] ?>">
                                </div>
                                <div class="mb-2 col col-12 col-md-6">
                                    <label for="receivePhone" class="form-label">Điện thoại nhận hàng</label>
                                    <input name="receivePhone" type="text" class="form-control" id="receivePhone" value="<?php echo $row['receive_phone'] ?>">
                                </div>
                                <div class="mb-2 col col-12">
                                    <label for="phigiaohnang" class="form-label">Phí giao hàng</label>
                                    <input name="phigiaohang" type="text" class="form-control" id="delivery_cost" value="<?php echo $row['delivery_cost'] ?>">
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td class="row">
                                <div class="mb-2 col">
                                    <label for="diachinhan" class="form-label">Địa chỉ nhận</label>
                                    <textarea required name="diachinhan" class="form-control" id="diachinhan" rows="3"><?php echo $row['receive_address'] ?></textarea>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td class="row">
                                <div class="mb-2 col">
                                    <label for="mota" class="form-label">Mô tả</label>
                                    <textarea name="mota" class="form-control" id="description" rows="3"><?php echo $row['description'] ?></textarea>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary pt-2 pb-2" data-bs-dismiss="modal">Đóng</button>
                    <button type="submit" class="btn btn-primary" name="editOrder">Sửa</button>
                </div>
            </div>
        </form>
    </div>
</div>