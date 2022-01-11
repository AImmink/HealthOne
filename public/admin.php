<?php

global $params;

$products = getAllproducts();

if (!isAdmin()){
    logout();
    header("location:/home");

}   else {
    switch ($params[2]) {
        case 'home:':
            $titleSuffix = ' | Thuis';
            include_once "../Templates/admin/home.php";
            break;
        case 'machines':
            $titleSuffix = ' | Machines';
            include_once "../Templates/admin/machines.php";
            break;
        case 'users':
            $titleSuffix = ' | Gebruikers';
            include_once "../Templates/admin/Users.php";
            break;
        case 'uitloggen':
            logout();
            break;
        default:
            include_once "../Templates/admin/home.php";
            break;
    }
}