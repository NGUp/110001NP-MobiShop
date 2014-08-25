<?php

session_start();

$id = addslashes($_POST['id']);

if ($id != '') {
    if (isset($_SESSION['cart'][$id])) {
        ++$_SESSION['cart'][$id];
    }
    else {
        $_SESSION['cart'][$id] = 1;
    }
    echo 'Đã thêm vào giỏ hàng thành công.';
}
else {
    echo 'Không thêm được vào giỏ hàng.';
}