<?php

include '/../System/DataProvider.php';

class CityModel {
    public static function getCities() {
        $query = "select * from city";
        $rows = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($rows != false) {
            while ($row = mysql_fetch_array($rows, MYSQL_ASSOC)) {
                // syntax of PHP 5.5
                $array = array(
                    'id'            => $row['ID'],
                    'city'      => $row['CityName']
                );
                $result[] = $array;
            }
        }
        return $result;
    }
}