<?php

include_once '/../System/DataProvider.php';

class MobileModel
{
    public static function getQuantity($manufacturer)
    {
        $query = "select count(ID) as SumOfQuantity from mobile where Company = '$manufacturer'";
        $quantity = DataProvider::ExecuteQuery($query);

        if ($quantity != false) {
            $row = mysql_fetch_array($quantity, MYSQL_ASSOC);
            return $row['SumOfQuantity'];
        }
        return false;
    }

    public static function getNameMobileByID($id) {
        $query = "select Name from mobile where ID = $id";
        $name = DataProvider::ExecuteQuery($query);
        $row = mysql_fetch_array($name, MYSQL_ASSOC);
        return $row['Name'];
    }

    public static function getMobileById($id)
    {
        $query = "select * from mobile where ID = '$id'";
        $mobiles = DataProvider::ExecuteQuery($query);

        if ($mobiles != false) {
            while ($row = mysql_fetch_array($mobiles, MYSQL_ASSOC)) {
                $array = array(
                    'id'            => $row['ID'],
                    'name'          => $row['Name'],
                    'company'       => $row['Company'],
                    'source'        => $row['Source'],
                    'image'         => $row['Image'],
                    'type'          => $row['Type'],
                    'price'         => $row['Price'],
                    'description'   => $row['Description'],
                    'date'          => $row['Date'],
                    'quantity'      => $row['Quantity'],
                    'view'          => $row['View'],
                    'sale'          => $row['Sale']
                );
                return $array;
            }
        }

        return false;
    }

    public static function getMobileByType($type)
    {
        $query = "select * from mobile where Type = '$type'";
        $mobiles = DataProvider::ExecuteQuery($query);
        $result = array();
        if ($mobiles != false) {
            while ($row = mysql_fetch_array($mobiles, MYSQL_ASSOC)) {
                $array = array(
                    'id'            => $row['ID'],
                    'name'          => $row['Name'],
                    'company'       => $row['Company'],
                    'source'        => $row['Source'],
                    'image'         => $row['Image'],
                    'type'          => $row['Type'],
                    'price'         => $row['Price'],
                    'description'   => $row['Description'],
                    'date'          => $row['Date'],
                    'quantity'      => $row['Quantity'],
                    'view'          => $row['View'],
                    'sale'          => $row['Sale']
                );
                $result[] = $array;
            }
        }

        return $result;
    }

    public static function getMobiles()
    {
        $query = "select * from mobile";
        $mobiles = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($mobiles != false) {
            while ($row = mysql_fetch_array($mobiles, MYSQL_ASSOC)) {
                $array = array(
                    'id'            => $row['ID'],
                    'name'          => $row['Name'],
                    'company'       => $row['Company'],
                    'source'        => $row['Source'],
                    'image'         => $row['Image'],
                    'type'          => $row['Type'],
                    'price'         => $row['Price'],
                    'description'   => $row['Description'],
                    'date'          => $row['Date'],
                    'quantity'      => $row['Quantity'],
                    'view'          => $row['View'],
                    'sale'          => $row['Sale']
                );
                $result[] = $array;
            }
        }

        return $result;
    }

    public static function getMobilesByDescDate()
    {
        $query = "select * from mobile order by Date DESC limit 0, 10";
        $mobiles = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($mobiles != false) {
            while ($row = mysql_fetch_array($mobiles, MYSQL_ASSOC)) {
                $array = array(
                    'id'            => $row['ID'],
                    'name'          => $row['Name'],
                    'company'       => $row['Company'],
                    'source'        => $row['Source'],
                    'image'         => $row['Image'],
                    'type'          => $row['Type'],
                    'price'         => $row['Price'],
                    'description'   => $row['Description'],
                    'date'          => $row['Date'],
                    'quantity'      => $row['Quantity'],
                    'view'          => $row['View'],
                    'sale'          => $row['Sale']
                );
                $result[] = $array;
            }
        }

        return $result;
    }

    public static function getMobilesByDescSale()
    {
        $query = "select * from mobile order by Sale DESC limit 0, 24";
        $mobiles = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($mobiles != false) {
            while ($row = mysql_fetch_array($mobiles, MYSQL_ASSOC)) {
                $array = array(
                    'id'            => $row['ID'],
                    'name'          => $row['Name'],
                    'company'       => $row['Company'],
                    'source'        => $row['Source'],
                    'image'         => $row['Image'],
                    'type'          => $row['Type'],
                    'price'         => $row['Price'],
                    'description'   => $row['Description'],
                    'date'          => $row['Date'],
                    'quantity'      => $row['Quantity'],
                    'view'          => $row['View'],
                    'sale'          => $row['Sale']
                );
                $result[] = $array;
            }
        }

        return $result;
    }

    public static function countMobiles()
    {
        $query = 'select count(ID) as numrows from mobile';
        $count = DataProvider::ExecuteQuery($query);
        $row = mysql_fetch_array($count, MYSQL_ASSOC);
        return $row['numrows'];
    }

    public static function countMobilesWithCondition($parameter)
    {
        $query = "select count(ID) as numrows from mobile where Name like '%$parameter%'";
        $count = DataProvider::ExecuteQuery($query);
        $row = mysql_fetch_array($count, MYSQL_ASSOC);
        return $row['numrows'];
    }

    public static function deleteMobile($id)
    {
        $query = "delete from mobile where ID = '$id'";
        DataProvider::ExecuteQuery($query);
    }

    public static function addMobile($name, $company, $source, $image, $type, $price, $description, $quantity, $view)
    {
        $query = "insert into mobile (Name, Company, Source, Image, Type, Price, Description, Quantity, View) values ('$name', '$company', '$source', '$image', '$type', $price, '$description', $quantity, $view)";
        DataProvider::ExecuteQuery($query);
    }

    public static function updateMobile($id, $name, $company, $source, $image, $type, $price, $description, $quantity, $view, $sale)
    {
        $query = "update mobile set Name = '$name', Company = '$company', Source = '$source', Image = '$image', Type = '$type', Price = '$price',  Description = '$description', Quantity = '$quantity', View = '$view', Sale = '$sale' where ID = $id";
        DataProvider::ExecuteQuery($query);
    }

    public static function getMobilesPerPage($offset, $rowPerPage)
    {
        $query = "select * from mobile limit $offset, $rowPerPage";
        $mobiles = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($mobiles != false) {
            while ($row = mysql_fetch_array($mobiles, MYSQL_ASSOC)) {
                $array = array(
                    'id'            => $row['ID'],
                    'name'          => $row['Name'],
                    'company'       => $row['Company'],
                    'source'        => $row['Source'],
                    'image'         => $row['Image'],
                    'type'          => $row['Type'],
                    'price'         => $row['Price'],
                    'description'   => $row['Description'],
                    'date'          => $row['Date'],
                    'quantity'      => $row['Quantity'],
                    'view'          => $row['View'],
                    'sale'          => $row['Sale']
                );
                $result[] = $array;
            }
        }

        return $result;
    }

    public static function getMobilesPerPageWithCondition($offset, $rowPerPage, $statement, $keyword, $isText)
    {
        if ($isText) {
            $query = "select * from mobile where $statement like '%$keyword%' limit $offset, $rowPerPage";
        } else {
            $query = "select * from mobile where $statement = $keyword limit $offset, $rowPerPage";
        }

        $mobiles = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($mobiles != false) {
            while ($row = mysql_fetch_array($mobiles, MYSQL_ASSOC)) {
                $array = array(
                    'id'            => $row['ID'],
                    'name'          => $row['Name'],
                    'company'       => $row['Company'],
                    'source'        => $row['Source'],
                    'image'         => $row['Image'],
                    'type'          => $row['Type'],
                    'price'         => $row['Price'],
                    'description'   => $row['Description'],
                    'date'          => $row['Date'],
                    'quantity'      => $row['Quantity'],
                    'view'          => $row['View'],
                    'sale'          => $row['Sale']
                );
                $result[] = $array;
            }
        }

        return $result;
    }

    public static function uploadImage($name, $ID)
    {
        $query = "update mobile set Image = '$name' where ID = '$ID'";
        DataProvider::ExecuteQuery($query);
    }

    public static function isAvailable($name)
    {
        $query = "select ID from mobile where Name = '$name'";
        $mobiles = DataProvider::ExecuteQuery($query);

        if (mysql_num_rows($mobiles) > 0) {
            return false;
        }

        return true;
    }

    public static function getPriceByID($id) {
        $query = "select Price from mobile where ID = $id";
        $price = DataProvider::ExecuteQuery($query);
        $row = mysql_fetch_array($price, MYSQL_ASSOC);
        return $row['Price'];
    }

    public static function getQuantityByID($id) {
        $query = "select Quantity from mobile where ID = $id";
        $quantity = DataProvider::ExecuteQuery($query);
        $row = mysql_fetch_array($quantity, MYSQL_ASSOC);
        return $row['Quantity'];
    }

    public static function updateQuantityByID($id, $quantity) {
        $query = "update mobile set Quantity = $quantity where ID = $id";
        DataProvider::ExecuteQuery($query);
    }
}