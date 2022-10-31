<?php

function makeConn() {
    include_once "auth.php";
    try {
        $conn = new PDO(...Auth());
        $conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
        return $conn;
    } catch (PDOException $e) {
        die('{"error":"'.$e->getMessage().'"}')

    }
}

function makeQuuery($conn,$prep,$params,$makeResults=true) {
    try {
        if(count($params)) {
             $stmt = $conn->prepare($prep);
             $stmt->execute($params);
        } else (
            $stmt = $conn->query($prep);
        )

        $result = $makeResults ? fetchAll($stmt) : [];

        return [
            
        ]
    }
}