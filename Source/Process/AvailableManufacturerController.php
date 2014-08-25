<?php

include '/Model/ManufacturerModel.php';

$manufacturer = addslashes($_POST['manufacturer']);

if (ManufacturerModel::isAvailable($manufacturer)) {
    echo 'true';
}
else {
    echo 'false';
}

die();