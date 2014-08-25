<?php session_start();
    if (isset($_SESSION['permission'])) {
        echo '<script> window.location = "../index.php"; </script>';
    }
	
	$_SESSION['title'] = 'Đăng nhập';
?>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8"/>
    <title>Login Page</title>
    <link href="img/mobile.ico" rel="shortcut icon"/>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="css/app.css" rel="stylesheet" type="text/css"/>
    <link href="css/globalstyle.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<?php include '/view/Sub/app_user_header.phtml'; ?>

<?php include '/view/widget.phtml'?>

<?php include '/view/login.phtml'; ?>

<?php include '/view/Sub/app_footer.phtml'; ?>

<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/angular.js"></script>
<script src="js/func.js"></script>
<script src="js/login.js"></script>
<script src="js/background.js"></script>
</body>
</html>