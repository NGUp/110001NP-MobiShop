<?php

include '/Model/TypeMobileModel.php';

$id = addslashes($_POST['id']);

TypeMobileModel::deleteTypeMobile($id);

echo 'OK';