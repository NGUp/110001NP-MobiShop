<?php

include_once '/Model/LoginModel.php';

session_start();

$username = addslashes($_POST['user']);
$password = addslashes($_POST['password']);
$remember = addslashes($_POST['remember']);

$result = LoginModel::login($username, $password);

if ($result > -1) {
    if (md5(sha1($password . $username)  . '110001NP') == $result['password']) {
        $_SESSION['user'] = $username;
        $_SESSION['permission'] = $result['permission'];

        if ($remember == 'true') {
            setcookie('user', $username, time() + 300, '/', '127.0.0.1', true);
            setcookie('permission', $result['permission'], time() + 300, '/', '127.0.0.1', true);
        }
        echo 'true';
    }
    else {
        echo 'false';
    }
}
else {
    echo 'false';
}