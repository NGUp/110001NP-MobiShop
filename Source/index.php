<?php session_start();

    // rand(5, 15): random sẽ ra giá trị trong khoảng từ 5 ~ 15

    //var_dump($_SESSION['cart']);
    //die();

    if (isset($_COOKIE['user'])) {
        $_SESSION['user'] = $_COOKIE['user'];
        $_SESSION['permission'] = $_COOKIE['permission'];
    }

    if (isset($_SESSION['permission'])) {
        if ($_SESSION['permission'] == 1) {
            echo '<script> window.location = "../page_index_admin.php"; </script>';
        }
    }

    $_SESSION['title'] = 'Trang chủ';
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>

    <title>Mobishop</title>
    <link href="img/mobile.ico" rel="shortcut icon"/>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="css/globalstyle.css" rel="stylesheet" type="text/css"/>
    <link href="css/app.css" rel="stylesheet" type="text/css"/>
</head>
<body ng-app="myApp">
    <?php include '/view/Sub/app_user_header.phtml'?>

    <?php include '/view/widget.phtml'?>

    <?php include '/view/index.phtml' ?>

    <?php include '/view/Sub/app_footer.phtml'; ?>

<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/regex.js"></script>
<script src="js/background.js"></script>
<script src="js/index.js"></script>
</body>
</html>