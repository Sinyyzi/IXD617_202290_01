<?php

function makeConn() {
    include_once "auth.php";
    try {
        $conn = new PDO(...Auth());
        $conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
        return $conn;
    } catch (PDOException $e) {
        die('{"error":"'.$e->getMessage().'"}');
    }
}

function makeUpload($file, $folder) {
    $filename = microtime(true) . "_" . $_FILES[$file]['name'];

    if (@move_uploaded_file(
        $_FILES[$file]['tmp_name'],
        $folder.$filename
    )) return ["result"=>$filename];
    else return [
        "error"=>"File Upload Failed",
        "filename"=>$filename
    ];
}


function fetchAll($result) {
    $a = [];
    while($row = $result->fetch(\PDO::FETCH_OBJ)) $a[] = $row;
    return $a;
}



function makeQuery($conn,$prep,$params,$makeResults=true) {
    try {
        if (count($params)) {
            $stmt = $conn->prepare($prep);
            $stmt->execute($params);
        } else {
            $stmt = $conn->query($prep);
        }

        $result = $makeResults ? fetchAll($stmt) : [];

        return [
            "result"=>$result
        ];
    } catch (PDOException $e) {
        return ["error"=>"Query Failed: ".$e->getMessage()];
    }
}

function makeStatement($data) {
    $conn = makeConn();
    $type = @$data->type;
    $params = @$data->params;

    switch($type) {
        // case "users_all":
        //     return makeQuery($conn, "SELECT * FROM `track_202290_users`", $params);
        // case "animals_all":
        //     return makeQuery($conn, "SELECT * FROM `track_202290_animals`", $params);
        // case "locations_all":
        //     return makeQuery($conn, "SELECT * FROM `track_202290_locations`", $params);
            
        case "user_by_id":
            return makeQuery($conn, "SELECT id,name,email,username,img,date_create FROM `track_202290_users` WHERE `id`=?", $params);
        case "sunset_by_id":
            return makeQuery($conn, "SELECT * FROM `track_202290_sunset_spots` WHERE `id`=?", $params);
        case "location_by_id":
            return makeQuery($conn, "SELECT * FROM `track_202290_locations` WHERE `id`=?", $params);

        
        case "sunset_spots_by_user_id":
            return makeQuery($conn, "SELECT * FROM `track_202290_sunset_spots` WHERE `user_id`=?", $params);        
        case "sunset_tracks_by_spot_id":
            return makeQuery($conn, "SELECT * FROM `track_202290_sunset_tracks` WHERE `sunset_id`=?", $params);

        case "check_signin":
            return makeQuery($conn, "SELECT `id` FROM `track_202290_users` WHERE `username`=? AND `password` = md5(?)", $params);

        case "recent_sunset_locations":
            return makeQuery($conn, "SELECT *
            FROM `track_202290_sunset_spots` ss
            JOIN (
                SELECT st1.*
                FROM `track_202290_sunset_tracks` st1
                WHERE st1.id = (
                    SELECT st2.id
                    FROM `track_202290_sunset_tracks` st2
                    WHERE st1.sunset_id = st2.sunset_id
                    ORDER BY st2.date_create DESC
                    LIMIT 1
                )
            ) st
            ON ss.id = st.sunset_id
            WHERE `user_id`=?
            ORDER BY st.sunset_id, st.date_create DESC
            ", $params);

        case "search_sunsets":
            return makeQuery($conn, "SELECT *
            FROM `track_202290_sunset_spots`
            WHERE 
                `name` LIKE ? AND
                `user_id` = ?
            ", $params);

        case "filter_sunsets":
            return makeQuery($conn, "SELECT *
            FROM `track_202290_sunset_spots`
            WHERE 
                `$params[0]` = ? AND
                `user_id` = ?
            ", [$params[1],$params[2]]);


        /* INSERT */
        case "insert_sunset_spot":
            $result = makeQuery($conn, "INSERT INTO
            `track_202290_sunset_spots`
            (
                `user_id`,
                `name`,
                `landscape`,
                `description`,
                `img`,
                `date_create`
            )
            VALUES
            (
                ?,
                ?,
                ?,
                ?,
                ?,
                NOW()
            )
            ", $params, false);

            if (isset($result['error'])) return $result;
            return ["id" => $conn->lastInsertId()];

        case "insert_sunset_track":
            $result = makeQuery($conn, "INSERT INTO
            `track_202290_sunset_tracks`
            (
                `sunset_id`,
                `lat`,
                `lng`,
                `description`,
                `weather`,
                `sunset_time`,
                `photo`,
                `icon`,
                `date_create`
            )
            VALUES
            (
                ?,
                ?,
                ?,
                ?,
                ?,
                ?,
                ?,
                'https://via.placeholder.com/400/?text=ICON',
                NOW()
            )
            ", $params, false);

            if (isset($result['error'])) return $result;
            return ["result"=>"Success"];

        case "insert_user":
            $result = makeQuery($conn, "SELECT `id`
            FROM `track_202290_users`
            WHERE `username`=? OR `email`=?
            ", [$params[0],$params[1]]);
            if (count($result['result']) > 0)
                return ["error"=>"Username or Email already exists"];

            $result = makeQuery($conn, "INSERT INTO
            `track_202290_users`
            (
                `name`,
                `username`,
                `email`,
                `password`,
                `img`,
                `date_create`
            )
            VALUES
            (
                ?,
                ?,
                ?,
                md5(?),
                ?,
                NOW()
            )
            ", $params, false);

            if (isset($result['error'])) return $result;
            return ["id" => $conn->lastInsertId()];
        
        /* UPDATE */
        case "update_sunset_spot":
            $result = makeQuery($conn, "UPDATE
            `track_202290_sunset_spots`
            SET
                `name` = ?,
                `landscape` = ?,
                `description` = ?,
                `img` = ?
            WHERE `id` = ?
            ", $params, false);

            if (isset($result['error'])) return $result;
            return ["result"=>"Success"];

            case "update_sunset_spot_without_img":
                $result = makeQuery($conn, "UPDATE
                `track_202290_sunset_spots`
                SET
                    `name` = ?,
                    `landscape` = ?,
                    `description` = ?
                WHERE `id` = ?
                ", $params, false);
    
                if (isset($result['error'])) return $result;
                return ["result"=>"Success"];
        
        case "update_user":
            $result = makeQuery($conn, "UPDATE
            `track_202290_users`
            SET
                `name` = ?,
                `username` = ?,
                `email` = ?
            WHERE `id` = ?
            ", $params, false);

            if (isset($result['error'])) return $result;
            return ["result"=>"Success"];

        case "update_password":
            $result = makeQuery($conn, "UPDATE
            `track_202290_users`
            SET
                `password` = md5(?)
            WHERE `id` = ?
            ", $params, false);

            if (isset($result['error'])) return $result;
            return ["result"=>"Success"];

        /* DELETE */
        case "delete_sunset":
            $result = makeQuery($conn, "DELETE FROM
            `track_202290_sunset_spots`
            WHERE `id` = ?
            ", $params, false);

            if (isset($result['error'])) return $result;
            return ["result"=>"Success"];

        case "delete_sunset_track":
            $result = makeQuery($conn, "DELETE FROM
            `track_202290_sunset_tracks`
            WHERE `id` = ?
            ", $params, false);

            if (isset($result['error'])) return $result;
            return ["result"=>"Success"];

        /* UPLOAD */
        case "update_user_photo":
            $result = makeQuery($conn, "UPDATE
            `track_202290_users`
            SET `img` = ?
            WHERE `id` = ?
            ", $params, false);

            if (isset($result['error'])) return $result;
            return ["result"=>"Success"];

        default:
            return ["error"=>"No Matched Type"];
    }
}

if (!empty($_FILES)) {
    $result = makeUpload("image","../uploads/");
    die(json_encode($result));
}

$data = json_decode(file_get_Contents("php://input"));

die(
    json_encode(
        makeStatement($data),
        JSON_NUMERIC_CHECK
    )
);