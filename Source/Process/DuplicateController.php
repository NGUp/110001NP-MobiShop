<?php

include '/Model/AccountModel.php';

$account = addslashes($_POST['username']);

if (AccountModel::isAvailableAccount($account)) {
    echo 'true';
}
else {
    echo 'false';
}