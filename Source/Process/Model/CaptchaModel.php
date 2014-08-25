<?php

// create Session
session_start();

// get string and enscrypt MD5
$ranStr = md5(microtime().rand());

// get 6 characters
$ranStr = substr($ranStr, 0, 6);

// save to Session
$_SESSION['cap_code'] = $ranStr;

// create Image from file
$newImage = imagecreatefromjpeg("../../img/bg_captcha.jpg");

// add Colors
$txtColor = imagecolorallocate($newImage, 0, 0, 0);

// draw String
imagestring($newImage, 5, 5, 5, $ranStr, $txtColor);

// export Image
header("Content-type: image/jpeg");

// export to File
imagejpeg($newImage);