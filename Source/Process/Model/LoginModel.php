<?php

include '/../System/DataProvider.php';

class LoginModel {
    public static function login($user, $password) {
        $query = "select password, permission from user where username = '$user'";
        $user = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($user != false) {
            $row = mysql_fetch_array($user, MYSQL_ASSOC);
            $array = array(
                'password'      => $row['password'],
                'permission'    => $row['permission']
            );

            $result = $array;
        }
        return $result;
    }
}