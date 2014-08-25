<?php

include '/Model/ManufacturerModel.php';

$id = addslashes($_POST['id']);

ManufacturerModel::deleteManufacturer($id);

echo 'OK';
