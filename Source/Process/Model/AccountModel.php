<?php

include '/../System/DataProvider.php';

class AccountModel {
    public static function getAccounts() {
        $query = "select * from user";
        $rows = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($rows != false) {
            while ($row = mysql_fetch_array($rows, MYSQL_ASSOC)) {
                // syntax of PHP 5.5
                $array = array(
                    'id'            => $row['ID'],
                    'fullname'      => $row['fullname'],
                    'account'       => $row['username'],
                    'password'      => $row['password'],
                    'permission'    => $row['permission'],
                    'city'          => $row['city'],
                    'birthday'      => $row['birthday']
                );
                $result[] = $array;
            }
        }
        return $result;
    }

    public static function getIDByAccount($account) {
        $query = "select ID from user where username = '$account'";
        $rows = DataProvider::ExecuteQuery($query);
        $result = -1;

        if ($rows != false) {
            while ($row = mysql_fetch_array($rows, MYSQL_ASSOC)) {
                return $row['ID'];
            }
        }

        return $result;
    }

    public static function getAccountByID($id) {
        $query = "select username from user where ID = $id";
        $rows = DataProvider::ExecuteQuery($query);
        $result = -1;

        if ($rows != false) {
            $row = mysql_fetch_array($rows, MYSQL_ASSOC);
            return $row['username'];
        }

        return $result;
    }

    public static function getAccountsPerPage($offset, $rowPerPage) {
        $query = "select * from user limit $offset, $rowPerPage";
        $accounts = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($accounts != false) {
            while ($row = mysql_fetch_array($accounts, MYSQL_ASSOC)) {
                $array = array(
                    'id'            => $row['ID'],
                    'fullname'      => $row['fullname'],
                    'account'       => $row['username'],
                    'password'      => $row['password'],
                    'permission'    => $row['permission'],
                    'city'          => $row['city'],
                    'birthday'      => $row['birthday']
                );
                $result[] = $array;
            }
        }

        return $result;
    }

    public static function getAccountsPerPageWithCondition($offset, $rowPerPage, $object, $condition, $isText) {
        if ($isText) {
            $query = "select * from user where $object like '%$condition%' limit $offset, $rowPerPage";
        }
        else {
            $query = "select * from user where $object = $condition limit $offset, $rowPerPage";
        }

        $types = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($types != false) {
            while ($row = mysql_fetch_array($types, MYSQL_ASSOC)) {
                $array = array(
                    'id'            => $row['ID'],
                    'fullname'      => $row['fullname'],
                    'account'       => $row['username'],
                    'password'      => $row['password'],
                    'permission'    => $row['permission'],
                    'city'          => $row['city'],
                    'birthday'      => $row['birthday']
                );
                $result[] = $array;
            }
        }

        return $result;
    }

    public static function countAccounts() {
        $query = 'select count(ID) as numrows from user';
        $count = DataProvider::ExecuteQuery($query);
        $row = mysql_fetch_array($count, MYSQL_ASSOC);
        return $row['numrows'];
    }

    public static function countAccountsWithCondition($parameter)
    {
        $query = "select count(ID) as numrows from user where username like '%$parameter%'";
        $count = DataProvider::ExecuteQuery($query);
        $row = mysql_fetch_array($count, MYSQL_ASSOC);
        return $row['numrows'];
    }

    public static function isAvailableAccount($account) {
        $query = "select ID from user where username = '$account'";
        $accounts = DataProvider::ExecuteQuery($query);

        if (mysql_num_rows($accounts) > 0) {
            return false;
        }

        return true;
    }

    public static function deleteAccount($id) {
        $query = "delete from user where id = '$id'";
        DataProvider::ExecuteQuery($query);
    }

    public static function editAccount($id, $name, $account, $password, $permission, $city, $birthday) {
        $query = "update user set fullname = '$name', username = '$account', password = '$password', permission = '$permission', city = '$city', birthday = '$birthday' where id = '$id'";
        DataProvider::ExecuteQuery($query);
    }
}