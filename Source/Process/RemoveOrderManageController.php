<?php

include '/Model/OrderModel.php';
include 'Model/CartModel.php';

$id = addslashes($_POST['id']);

CartModel::deleteCart($id);
OrderModel::deleteOrder($id);

echo 'OK';
