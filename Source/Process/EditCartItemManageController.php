<?php

include '/Model/CartModel.php';
include '/Model/OrderModel.php';
include '/Model/MobileModel.php';

$cartID             = addslashes($_POST['cartID']);
$mobileID           = addslashes($_POST['mobileID']);
$quantity           = addslashes($_POST['quantity']);
$currentQuantity    = addslashes($_POST['currentQuantity']);
$total              = addslashes($_POST['total']);
$price              = MobileModel::getPriceByID($mobileID);
$quantityDB         = MobileModel::getQuantityByID($mobileID);

$newTotal = $total - ($currentQuantity * $price);
$newTotal += ($quantity * $price);

$newQuantity = $quantityDB + $currentQuantity - $quantity;

CartModel::changeQuantity($cartID, $mobileID, $quantity);
OrderModel::updateTotal($cartID, $newTotal);
MobileModel::updateQuantityByID($mobileID, $newQuantity);

echo $newQuantity;