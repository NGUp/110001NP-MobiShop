<?php

include '/Model/TypeMobileModel.php';

$id     = addslashes($_POST['id']);
$name   = addslashes($_POST['name']);

TypeMobileModel::updateTypeMobile($id, $name);

echo 'OK';