<?php

include '/Model/ManufacturerModel.php';

if (isset($_POST['submit'])) {
    $name = addslashes($_POST['manufacturer']);

    if (is_uploaded_file($_FILES['image']['tmp_name'])) {
        $fileName = $_FILES['image']['name'];
        $cover = '../img/Manufacturer/' . $fileName;
        move_uploaded_file($_FILES['image']['tmp_name'], $cover);
    }
    ManufacturerModel::addManufacturer($name, $fileName);
}

echo '<script>window.location = "../page_manager_manufacturer.php";</script>';
