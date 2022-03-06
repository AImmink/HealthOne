<?php
function getOpenTimes()
{
    global $pdo;
    $query=$pdo->prepare("SELECT * FROM shophours");
    $query->execute();
    $result=$query->fetchAll(PDO::FETCH_CLASS,"Open_Times" );
    return $result;
}