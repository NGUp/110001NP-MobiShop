<?php

require 'Config.php';

class DataProvider {
    public static function ExecuteQuery($sql) {
        $connection = mysql_connect(Config::db_host,Config::db_user, Config::db_password) or
        die ("couldn't connect to " . Config::db_host);

        mysql_select_db(Config::db_database, $connection);
        mysql_query("set names 'utf8'");
        $result = mysql_query($sql,$connection);
        mysql_close($connection);

        return $result;
    }

    public static function debug($value) {
        print_r($value);
        die();
    }
}