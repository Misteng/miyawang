<?php

    
    //配置参数
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "h5_1804";

    //创建链接(实例化)
    $conn = new mysqli($servername,$username,$password,$dbname);
    $conn->set_charset('utf8');
    // var_dump($conn);
    //检测链接
    if($conn->connect_error){
        //输出信息并结束链接
        die("链接失败：" . $conn->connect_error);
    }
?>