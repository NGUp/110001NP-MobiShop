<?php

session_start();

$id = addslashes($_POST['id']);

unset($_SESSION['cart'][$id]);

echo 'OK';