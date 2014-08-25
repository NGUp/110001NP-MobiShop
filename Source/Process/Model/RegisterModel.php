<?php

include '/../System/DataProvider.php';

class RegisterModel {
    public static function getCity() {
        $query = 'select CityName from city';
        $cities = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($cities != false) {
            while ($row = mysql_fetch_array($cities, MYSQL_ASSOC)) {
                $result[] = $row["CityName"];
            }
        }

        return $result;
    }

    public static function registerUser($name, $account, $password, $birthday, $city) {
        $query = 'insert into user (fullname, username, password, permission, city, birthday) values (';
        $query .= "'" . $name           . "', ";
        $query .= "'" . $account        . "', ";
        $query .= "'" . $password       . "', ";
        $query .=       0               . ", ";
        $query .= "'" . $city           . "', ";
        $query .= "'" . $birthday       . "')";

        DataProvider::ExecuteQuery($query);
    }
}