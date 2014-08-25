<?php

include '/Model/ManufacturerModel.php';

$id     = addslashes($_POST['id']);
$name   = addslashes($_POST['name']);
$fileName       = '';

if (is_uploaded_file($_FILES['image']['tmp_name'])) {
    $fileName = $_FILES['image']['name'];
    $cover = '../img/Mobile/' . $fileName;
    move_uploaded_file($_FILES['image']['tmp_name'], $cover);
}

ManufacturerModel::editManufacturer($id, $name, $fileName);

echo '<script>window.location = "../page_manager_manufacturer.php";</script>';