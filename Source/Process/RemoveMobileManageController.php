<?php

include '/Model/MobileModel.php';

$id = addslashes($_POST['id']);

MobileModel::deleteMobile($id);

echo 'OK';

