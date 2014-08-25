<?php

include '/Model/MobileModel.php';

$id             = addslashes($_POST['id']);
$name           = addslashes($_POST['mobile']);
$company        = addslashes($_POST['manufacturer']);
$source         = addslashes($_POST['origin']);
$type           = addslashes($_POST['type']);
$price          = addslashes($_POST['price']);
$quantity       = addslashes($_POST['quantity']);
$description    = addslashes($_POST['description']);
$view           = addslashes($_POST['view']);
$sale           = addslashes($_POST['sale']);
$fileName       = '';

if (is_uploaded_file($_FILES['image']['tmp_name'])) {
    $fileName = $_FILES['image']['name'];
    $cover = '../img/Manufacturer/' . $fileName;
    move_uploaded_file($_FILES['image']['tmp_name'], $cover);
}

MobileModel::updateMobile($id, $name, $company, $source, $fileName, $type, $price, $description, $quantity, $view, $sale);

echo '<script>window.location = "../page_manager_mobile.php";</script>';
