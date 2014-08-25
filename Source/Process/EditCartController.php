<?php

session_start();

$id         = addslashes($_POST['id']);
$quantity   = addslashes($_POST['quantity']);

if ($id != '') {
    $_SESSION['cart'][$id] = $quantity;
    echo $_SESSION['cart'][$id];
}
else {
    echo 'Failed';
}