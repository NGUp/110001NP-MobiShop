<?php

include_once '/../System/DataProvider.php';

class TypeMobileModel {
    public static function getTypes() {
        $query = "select * from typemobile";
        $types = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($types != false) {
            while ($row = mysql_fetch_array($types, MYSQL_ASSOC)) {
                $array = array(
                    'id'    => $row['ID'],
                    'type'  => $row['type']
                );
                $result[] = $array;
            }
        }

        return $result;
    }

    public static function getTypesPerPage($offset, $rowPerPage) {
        $query = "select * from typemobile limit $offset, $rowPerPage";
        $types = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($types != false) {
            while ($row = mysql_fetch_array($types, MYSQL_ASSOC)) {
                $array = array(
                    'id'    => $row['ID'],
                    'type'  => $row['type']
                );
                $result[] = $array;
            }
        }

        return $result;
    }

    public static function getTypesPerPageWithCondition($offset, $rowPerPage, $object, $condition, $isText) {
        if ($isText) {
            $query = "select * from typemobile where $object like '%$condition%' limit $offset, $rowPerPage";
        }
        else {
            $query = "select * from typemobile where $object = $condition limit $offset, $rowPerPage";
        }

        $types = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($types != false) {
            while ($row = mysql_fetch_array($types, MYSQL_ASSOC)) {
                $array = array(
                    'id'    => $row['ID'],
                    'type'  => $row['type']
                );
                $result[] = $array;
            }
        }

        return $result;
    }

    public static function countTypeMobiles() {
        $query = 'select count(ID) as numrows from typemobile';
        $count = DataProvider::ExecuteQuery($query);
        $row = mysql_fetch_array($count, MYSQL_ASSOC);
        return $row['numrows'];
    }

    public static function countTypeMobilesWithCondition($parameter) {
        $query = "select count(ID) as numrows from typemobile where type like '%$parameter%'";
        $count = DataProvider::ExecuteQuery($query);
        $row = mysql_fetch_array($count, MYSQL_ASSOC);
        return $row['numrows'];
    }

    public static function deleteTypeMobile($id) {
        $query = "delete from typemobile where ID = '$id'";
        DataProvider::ExecuteQuery($query);
    }

    public static function updateTypeMobile($id, $name) {
        $query = "update typemobile set type = '$name' where ID = '$id'";
        DataProvider::ExecuteQuery($query);
    }

    public static function addTypeMobile($name) {
        $query = "insert into typemobile (type) values ('$name')";
        DataProvider::ExecuteQuery($query);
    }

    public static function getIDByName($name) {
        $query = "select ID from typemobile where type = '$name'";
        $count = DataProvider::ExecuteQuery($query);
        $row = mysql_fetch_array($count, MYSQL_ASSOC);
        return $row['ID'];
    }

    public static function isAvailable($name)
    {
        $query = "select ID from typemobile where type = '$name'";
        $types = DataProvider::ExecuteQuery($query);

        if (mysql_num_rows($types) > 0) {
            return false;
        }

        return true;
    }
}