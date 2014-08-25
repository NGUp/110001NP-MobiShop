<?php

session_start();

unset($_SESSION['user']);
unset($_SESSION['permission']);

if (isset($_SESSION['cart'])) {
    unset($_SESSION['cart']);
}

if (isset($_COOKIE['user'])) {
    setcookie('user', $username, time() -3600, '/', '127.0.0.1', true);
    setcookie('permission', $result['permission'], time() - 3600, '/', '127.0.0.1', true);
}

echo '<script>window.location = "../index.php";</script>';