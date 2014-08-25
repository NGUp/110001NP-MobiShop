<?php

include_once '/Model/MobileModel.php';

$id = addslashes($_POST['ID']);

if(is_array($_FILES)) {
    if (is_uploaded_file($_FILES['image']['tmp_name'])) {
        $fileName = $_FILES['image']['name'];
        $cover = '../img/Mobile/' . $fileName;
        move_uploaded_file($_FILES['image']['tmp_name'], $cover);
        MobileModel::uploadImage($fileName, $id);
        echo 'OK';
    }
    else {
        echo 'failed';
    }
}
else {
    echo 'Finish';
}

