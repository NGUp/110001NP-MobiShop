<?php

include_once '/../System/DataProvider.php';

class ManufacturerModel {
    public static function getManufacturer(){
        $query = 'select * from manufacturer';
        $manufacturers = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($manufacturers != false) {
            while ($row = mysql_fetch_array($manufacturers, MYSQL_ASSOC)) {
                $array = array(
                    'id'    => $row['ID'],
                    'name'  => $row['name'],
                    'logo'  => $row['logo']
                 );
                $result[] = $array;
            }
        }

        return $result;
    }

    public static function getLogo($manufacturer) {
        $query = "select logo from manufacturer where name = '$manufacturer'";
        $logo = DataProvider::ExecuteQuery($query);

        if ($logo != false) {
            $row = mysql_fetch_array($logo, MYSQL_ASSOC);
            return $row['logo'];
        }
        return false;
    }

    public static function getID($manufacturer) {
        $query = "select ID from manufacturer where name = '$manufacturer'";
        $IDs = DataProvider::ExecuteQuery($query);

        if ($IDs != false) {
            $row = mysql_fetch_array($IDs, MYSQL_ASSOC);
            return $row['ID'];
        }
        return false;
    }

    public static function countManufacturers() {
        $query = 'select count(ID) as numrows from manufacturer';
        $count = DataProvider::ExecuteQuery($query);
        $row = mysql_fetch_array($count, MYSQL_ASSOC);
        return $row['numrows'];
    }

    public static function countMobilesWithCondition($parameter)
    {
        $query = "select count(ID) as numrows from manufacturer where Name like '%$parameter%'";
        $count = DataProvider::ExecuteQuery($query);
        $row = mysql_fetch_array($count, MYSQL_ASSOC);
        return $row['numrows'];
    }

    public static function deleteManufacturer($id) {
        $query = "delete from manufacturer where id = '$id'";
        DataProvider::ExecuteQuery($query);
    }

    public static function editManufacturer($id, $name, $logo) {
        $query = "update manufacturer set name = '$name', logo = '$logo' where id = '$id'";
        DataProvider::ExecuteQuery($query);
    }

    public static function addManufacturer($name, $logo) {
        $query = "insert into manufacturer (name, logo) values ('$name', '$logo')";
        DataProvider::ExecuteQuery($query);
    }

    public static function isAvailable($name) {
        $query = "select ID from manufacturer where name = '$name'";
        $manufacturers = DataProvider::ExecuteQuery($query);

        if (mysql_num_rows($manufacturers) > 0) {
            return false;
        }

        return true;
    }

    public static function getManufacturerPerPage($offset, $rowPerPage){
        $query = "select * from manufacturer limit $offset, $rowPerPage";
        $manufacturers = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($manufacturers != false) {
            while ($row = mysql_fetch_array($manufacturers, MYSQL_ASSOC)) {
                $array = array(
                    'id'    => $row['ID'],
                    'name'  => $row['name'],
                    'logo'  => $row['logo']
                );
                $result[] = $array;
            }
        }

        return $result;
    }

    public static function getManufacturersPerPageWithCondition($offset, $rowPerPage, $statement, $keyword, $isText) {
        if ($isText) {
            $query = "select * from manufacturer where $statement like '%$keyword%' limit $offset, $rowPerPage";
        }
        else {
            $query = "select * from manufacturer where $statement = $keyword limit $offset, $rowPerPage";
        }

        $manufacturers = DataProvider::ExecuteQuery($query);
        $result = array();

        if ($manufacturers != false) {
            while ($row = mysql_fetch_array($manufacturers, MYSQL_ASSOC)) {
                $array = array(
                    'id'    => $row['ID'],
                    'name'  => $row['name'],
                    'logo'  => $row['logo']
                );
                $result[] = $array;
            }
        }

        return $result;
    }
}