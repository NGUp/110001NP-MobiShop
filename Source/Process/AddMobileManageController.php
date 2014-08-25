<?php

include '/Model/MobileModel.php';

if (isset($_POST['submit'])) {
    $name           = addslashes($_POST['mobile']);
    $company        = addslashes($_POST['manufacturer']);
    $source         = addslashes($_POST['origin']);
    $type           = addslashes($_POST['type']);
    $price          = addslashes($_POST['price']);
    $quantity       = addslashes($_POST['quantity']);
    $description    = addslashes($_POST['description']);
    $view           = 0;
    $fileName = '';

    if (is_uploaded_file($_FILES['image']['tmp_name'])) {
        $fileName = $_FILES['image']['name'];
        $cover = '../img/Mobile/' . $fileName;
        move_uploaded_file($_FILES['image']['tmp_name'], $cover);
    }

    MobileModel::addMobile($name, $company, $source, $fileName, $type, $price, $description, $quantity, $view);
}

echo '<script>window.location = "../page_manager_mobile.php";</script>';