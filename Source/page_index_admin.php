<?php session_start();

if ($_SESSION['permission'] == 1) {
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
    <body>

    <?php include '/view/Sub/app_admin_header.phtml'; ?>

    <?php include '/view/admin.phtml'; ?>

    <?php include '/view/Sub/app_footer.phtml'; ?>

    <script src="js/jquery.js"></script>
    <script src="js/angular.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/regex.js"></script>
    </body>
    </html>
<?php
}
else {
    include 'page_firewall.php';
}
?>