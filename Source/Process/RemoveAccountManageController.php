<?php

include '/Model/AccountModel.php';

$id = addslashes($_POST['id']);

AccountModel::deleteAccount($id);

echo 'OK';