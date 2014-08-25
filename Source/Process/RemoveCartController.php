<?php

session_start();

if (isset($_SESSION['cart'])) {
    unset($_SESSION['cart']);
    echo 'Hủy thành công.';
}
else {
    echo 'Giỏ hàng trống.';
}
