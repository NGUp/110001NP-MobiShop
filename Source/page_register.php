<?php session_start();
    if (isset($_SESSION['permission'])) {
        echo '<script> window.location = "../index.php"; </script>';
    }
	
	$_SESSION['title'] = 'Đăng kí';
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Register Page</title>
    <link href="img/mobile.ico" rel="shortcut icon"/>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="css/app.css" rel="stylesheet" type="text/css"/>
    <link href="css/globalstyle.css" rel="stylesheet" type="text/css"/>
</head>
<body ng-app>
<?php include '/view/Sub/app_user_header.phtml'; ?>

<?php include '/view/widget.phtml'?>

<?php include '/view/register.phtml'; ?>

<?php include '/view/Sub/app_footer.phtml'; ?>

<script src="js/jquery.js"></script>
<script src="js/angular.js"></script>
<script src="js/regex.js"></script>
<script src="js/register.js"></script>
<script src="js/background.js"></script>
</body>
</html>