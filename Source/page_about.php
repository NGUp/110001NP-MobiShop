<?php session_start(); ?>

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
<body ng-app>

<?php
    if (isset($_SESSION['permission'])) {
        if (addslashes($_SESSION['permission']) == 1) {
            include '/view/Sub/app_admin_header.phtml';
        }
        else {
			$_SESSION['title'] = 'About';
            include '/view/Sub/app_user_header.phtml';
			include '/view/widget.phtml';
        }
    }
    else {
		$_SESSION['title'] = 'About';
        include '/view/Sub/app_user_header.phtml';
		include '/view/widget.phtml';
    }
?>

<?php include '/view/about.phtml'; ?>

<?php include '/view/Sub/app_footer.phtml' ?>

<script src="js/jquery.js"></script>
<script src="js/angular.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/background.js"></script>
</body>
</html>