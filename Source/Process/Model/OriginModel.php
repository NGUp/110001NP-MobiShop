<?php

include_once '/../System/DataProvider.php';

class OriginModel {
    public static function getOrigins() {
        $query = 'select * from origin';
        $countries = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($countries != false) {
            while ($row = mysql_fetch_array($countries, MYSQL_ASSOC)) {
                $result[] = $row['Country'];
            }
        }

        return $result;
    }
}