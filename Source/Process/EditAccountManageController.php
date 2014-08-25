<?php

include '/Model/AccountModel.php';

$id         = addslashes($_POST['id']);
$account    = addslashes($_POST['account']);
$name       = addslashes($_POST['name']);
$permission = addslashes($_POST['permission']);
$city       = addslashes($_POST['city']);
$birthday   = addslashes($_POST['birthday']);
$password   = addslashes($_POST['password']);
$reset      = addslashes($_POST['reset']);

if (addslashes($reset) == 1) {
    $password = md5(sha1('123456' . $account)  . '110001NP');
}

AccountModel::editAccount($id, $name, $account, $password, $permission, $city, $birthday);

echo '<script>window.location = "../page_manager_account.php";</script>';