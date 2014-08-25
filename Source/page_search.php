<?php session_start();
    if (isset($_SESSION['permission'])) {
        if ($_SESSION['permission'] == 1) {
            echo '<script> window.location = "../page_manager.php"; </script>';
        }
    }

    $_SESSION['title'] = 'Tìm kiếm';
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Search Page</title>
    <link href="img/mobile.ico" rel="shortcut icon"/>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="css/globalstyle.css" rel="stylesheet" type="text/css"/>
    <link href="css/app.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<?php include '/view/Sub/app_user_header.phtml' ?>

<?php include '/view/widget.phtml'?>

<?php include '/view/search.phtml' ?>

<?php include '/view/Sub/app_footer.phtml' ?>

<script src="js/jquery.js"></script>
<script src="js/angular.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/regex.js"></script>
<script src="js/background.js"></script>
<script src="js/cart.js"></script>
</body>
</html>