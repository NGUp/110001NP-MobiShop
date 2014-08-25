<?php

include '/Model/CartModel.php';
include '/Model/MobileModel.php';

$cartID     = addslashes($_POST['cartID']);
$mobileID   = addslashes($_POST['mobileID']);
$quantity   = addslashes($_POST['quantity']);
$total      = addslashes($_POST['total']);
$price      = MobileModel::getPriceByID($mobileID);

$newTotal = $total - ($quantity * $price);

CartModel::deleteItemCart($cartID, $mobileID, $newTotal);

echo 'OK';