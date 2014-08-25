<?php

include '/Model/MobileModel.php';

$mobile = addslashes($_POST['mobile']);

if (MobileModel::isAvailable($mobile)) {
    echo 'true';
}
else {
    echo 'Tên điện thoại đã có tại MobiShop';
}

die();