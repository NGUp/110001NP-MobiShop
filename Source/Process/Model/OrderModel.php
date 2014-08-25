<?php

include_once '/../System/DataProvider.php';

class OrderModel {
    public static function addMobile($cartID, $mobileID, $quantity) {
        $query = "insert into details (CartID, IDMobile, Quantity) values ($cartID, $mobileID, $quantity)";
        DataProvider::ExecuteQuery($query);
    }

    public static function getOrders() {
        $query = "select * from `order`";
        $orders = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($orders != false) {
            while ($row = mysql_fetch_array($orders, MYSQL_ASSOC)) {
                $array = array(
                    'id'        => $row['ID'],
                    'userID'    => $row['IDUser'],
                    'date'      => $row['date'],
                    'total'     => $row['Total']
                );
                $result[] = $array;
            }
        }

        return $result;
    }

    public static function deleteOrder($id)
    {
        $query = "delete from `order` where ID = '$id'";
        DataProvider::ExecuteQuery($query);
    }

    public static function updateTotal($cartID, $total) {
        $query = "update `order` set Total = $total where ID = $cartID";
        DataProvider::ExecuteQuery($query);
    }

    public static function getOrdersPerPage($offset, $rowPerPage) {
        $query = "select * from `order` limit $offset, $rowPerPage";
        $orders = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($orders != false) {
            while ($row = mysql_fetch_array($orders, MYSQL_ASSOC)) {
                $array = array(
                    'id'        => $row['ID'],
                    'userID'    => $row['IDUser'],
                    'date'      => $row['date'],
                    'total'     => $row['Total']
                );
                $result[] = $array;
            }
        }

        return $result;
    }

    public static function getOrdersPerPageWithCondition($offset, $rowPerPage, $object, $condition, $isText) {
        if ($isText) {
            $query = "select * from `order` where $object like '%$condition%' limit $offset, $rowPerPage";
        }
        else {
            $query = "select * from `order` where $object = $condition limit $offset, $rowPerPage";
        }

        $types = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($types != false) {
            while ($row = mysql_fetch_array($types, MYSQL_ASSOC)) {
                $array = array(
                    'id'        => $row['ID'],
                    'userID'    => $row['IDUser'],
                    'date'      => $row['date'],
                    'total'     => $row['Total']
                );
                $result[] = $array;
            }
        }

        return $result;
    }

    public static function countOrders() {
        $query = 'select count(ID) as numrows from `order`';
        $count = DataProvider::ExecuteQuery($query);
        $row = mysql_fetch_array($count, MYSQL_ASSOC);
        return $row['numrows'];
    }

    public static function countOrdersWithCondition($parameter)
    {
        $query = "select count(ID) as numrows from `order` where IDUser = $parameter";
        $count = DataProvider::ExecuteQuery($query);
        $row = mysql_fetch_array($count, MYSQL_ASSOC);
        return $row['numrows'];
    }
}