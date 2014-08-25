<?php

include '/Model/TypeMobileModel.php';

$name = addslashes($_POST['name']);

if (TypeMobileModel::isAvailable($name)) {
    TypeMobileModel::addTypeMobile($name);

    echo TypeMobileModel::getIDByName($name);
}
else {
    echo -1;
}