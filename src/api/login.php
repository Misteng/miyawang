<?php

//引入connect.php文件
include "connect.php";

    $username = isset($_POST['username']) ? $_POST['username'] : null;
    $password = isset($_POST['password']) ? $_POST['password'] : null;

    $sql = "select * from user where username='$username'and password='$password'";

    //执行sql语句
    $result = $conn->query($sql);

    // var_dump($result);
    if($result->num_rows > 0){
        echo "yes";
    }else{
        echo "no";
    }

?>