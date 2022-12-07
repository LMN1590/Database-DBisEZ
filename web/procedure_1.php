<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Font Awesome CDN-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
    <!-- jQuery CDN-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!--Bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="./style/style.css">
    <title>Document</title>
</head>
<body>
    <?php $IPATH = $_SERVER["DOCUMENT_ROOT"];
    include($IPATH."\\navbar.php");?>

    <div class="container info">
        <h3>Danh sách đơn hàng</h3>
        <form class="d-flex" role="search" method="post">
            <input class="form-control me-2" type="search" name="phuongthuc" placeholder="Phương thức thanh toán" aria-label="Search">
            <button class="btn btn-outline-primary" type="submit">Search</button>
        </form>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">ID người nhận</th>
                    <th scope="col">Họ</th>
                    <th scope="col">Tên</th>
                    <th scope="col">ID đơn hàng</th>
                    <th scope="col">Phương thức</th>
                    <th scope="col">Cập nhật/ Xóa</th>
                </tr>
            </thead>
            <tbody>
                <?php
                if (isset($_POST['phuongthuc'])) {
                    $phuongthuc = $_POST['phuongthuc'];
                    require_once('controller\config.php');
                    $query = 'CALL Hoadoncophuongthuc("' . $phuongthuc .'")';
                    $res = $conn->query($query);
                    if ($res->num_rows > 0) {
                        while ($row = $res->fetch_assoc()) {
                            if (isset($row['Thông báo lỗi'])) {
                                echo '<script>alert("' . $row['Thông báo lỗi'] . '")</script>';
                            }
                            else {
                                echo '
                                <tr>
                                    <th scope="row">' . $row['IDtaikhoan'] .'</th>
                                    <td>' . $row['Ho'] .'</td>
                                    <td>' . $row['Ten'] . '</td>
                                    <td>' . $row['IDdonhang'] .'</td>
                                    <td>' . $row['Phuongthuc'] . '</td>
                                    <td>
                                        <button type="button" class="btn btn-primary" value="' . $row['IDhoadon'] . '" data-bs-toggle="modal" data-bs-target="#exampleModal">Cập nhật</button>
                                        <button type="button" class="btn btn-danger">Xóa</button>
                                    </td>
                                </tr>
                                ';
                            }
                        }
                    }
                }
                ?>
            </tbody>
        </table>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Chỉnh sửa thông tin hóa đơn</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                <button type="button" class="btn btn-primary">Cập nhật</button>
            </div>
            </div>
        </div>
    </div>
</body>
</html>
<script>
    
</script>