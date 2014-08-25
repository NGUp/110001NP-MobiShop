<?php

include_once '/../System/DataProvider.php';

class CartModel {
    public static function createShoppingCart($userID, $time, $total) {
        $query = "insert into `order` (IDUser, date, Total) values ($userID, '$time', $total)";
        DataProvider::ExecuteQuery($query);
    }

    public static function getMaxID() {
        $query = "select max(ID) as maxID from `order`";
        $result = DataProvider::ExecuteQuery($query);

        if ($result != false) {
            $row = mysql_fetch_array($result, MYSQL_ASSOC);
            return $row['maxID'];
        }

        return -1;
    }

    public static function deleteCart($cartID)
    {
        $query = "delete from details where CartID = $cartID";
        DataProvider::ExecuteQuery($query);
    }

    public static function getCarts($id) {
        $query = "select * from details where CartID = $id";
        $rows = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($rows != false) {
            while ($row = mysql_fetch_array($rows, MYSQL_ASSOC)) {
                // syntax of PHP 5.5
                $array = array(
                    'cartID'    => $row['CartID'],
                    'mobileID'  => $row['IDMobile'],
                    'quantity'  => $row['Quantity']
                );
                $result[] = $array;
            }
        }
        return $result;
    }

    public static function  deleteItemCart($cartID, $mobileID, $newTotal) {
        $query = "delete from details where CartID = $cartID and IDMobile = $mobileID";
        DataProvider::ExecuteQuery($query);

        $query = "update `order` set Total = $newTotal where ID = $cartID";
        DataProvider::ExecuteQuery($query);
    }

    public static function changeQuantity($cartID, $mobileID, $quantity) {
        $query = "update details set Quantity = $quantity where CartID = $cartID and IDMobile = $mobileID";
        DataProvider::ExecuteQuery($query);
    }
}