<?php

include '/Model/AccountModel.php';
include '/Model/CartModel.php';
include '/Model/MobileModel.php';
include '/Model/OrderModel.php';

session_start();

$total = addslashes($_POST['total']);
$user = addslashes($_SESSION['user']);
$userID = AccountModel::getIDByAccount($user);

$month = rand(1, 12);
$day = rand(1, 28);
$date = $day . '/' .  $month . '/2014';

CartModel::createShoppingCart($userID, $date, $total);
$cartID = CartModel::getMaxID();

foreach ($_SESSION['cart'] as $product_id => $quantity) {
    OrderModel::addMobile($cartID, $product_id, $quantity);
    MobileModel::updateQuantityByID($product_id, $quantity);
}

foreach ($_SESSION['cart'] as $product_id => $quantity) {
    unset($_SESSION['cart'][$product_id]);
}

echo 'Đã thanh toán';