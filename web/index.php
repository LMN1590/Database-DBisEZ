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
        <div class="row">
            <div class="col-md-6 col-12 online">
                <div class="row">
                    <div class="col-4 info-box num-order">
                        <h4></h4>
                        <p>Đơn hàng giao</p>
                    </div>
                    <div class="col-4 info-box sum-order">
                        <h4></h4>
                        <p>Tổng tiền đơn</p>
                    </div>
                    <div class="col-4 info-box sum-ship">
                        <h4></h4>
                        <p>Tổng tiền giao</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-12 real">
                <div class="row">
                    <div class="col-4 info-box num-order">
                        <h4></h4>
                        <p>Đơn hàng giao</p>
                    </div>
                    <div class="col-4 info-box sum-order">
                        <h4></h4>
                        <p>Tổng tiền đơn</p>
                    </div>
                    <div class="col-4 info-box sum-ship">
                        <h4></h4>
                        <p>Tổng tiền giao</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
<script>
    function getInfo(type){
        if(type==="online"){
            $.ajax({
                method:"post",
                url:"./controller/getInfo.php",
                data:{
                    type: "Online"
                },
                success: function(data,status){
                    console.log(data);
                    data=JSON.parse(data);
                    $(".online .num-order h4").html(data['count']);
                    $(".online .sum-order h4").html(data['totalCost']);
                    $(".online .sum-ship h4").html(data['totalShip']);
                }
            });
        }
        else if(type==="real"){
            $.ajax({
                method:"post",
                url:"./controller/getInfo.php",
                data:{
                    type: "Trực tiếp"
                },
                success: function(data,status){
                    console.log(data);
                    data=JSON.parse(data);
                    $(".real .num-order h4").html(data['count']);
                    $(".real .sum-order h4").html(data['totalCost']);
                    $(".real .sum-ship h4").html(data['totalShip']);
                }
            });
        }
    }
    $(window).on('load',function(){
        getInfo("online");
        getInfo("real");
    });
</script>