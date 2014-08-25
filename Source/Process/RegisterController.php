<?php

include_once 'Model/RegisterModel.php';

if (isset($_POST['submit'])) {
    $fullName   = addslashes($_POST['register_fullName']);
    $day        = addslashes($_POST['register_day']);
    $month      = addslashes($_POST['register_month']);
    $year       = addslashes($_POST['register_year']);
    $city       = addslashes($_POST['register_city']);
    $account    = addslashes($_POST['register_account']);
    $password   = addslashes($_POST['register_password']);

    $password = md5(sha1($password . $account) . '110001NP');

    if ($day != '' && $month != '' && $year != '') {
        $birthday   = $day . '/' . $month . '/' . $year;
    }
    else {
        $birthday = '';
    }

    RegisterModel::registerUser($fullName, $account, $password, $birthday, $city);
    echo '<script> window.location = "../page_login.php"; </script>';
}