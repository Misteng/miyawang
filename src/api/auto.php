<?php

    /*
		获取外网IP
			* url：http://2018.ip138.com/ic.asp
			* 获取数据：file_get_contents($url)
	 */

     //获取IP
    $url = 'https://img05.miyabaobei.com/';

    $content = file_get_contents($url);
    print_r ($content);
    $content = iconv('gb2312','utf-8',$content);
    // print_r ($content);
    //筛选要的数据
    //d1//p1//item//10//1061//1061721_normal_4.jpg
    //d1//p4//item//10//1023//1023539_normal_4.jpg
    preg_match('/$d1\/\/\d{2}\/\/\d{4}\/\/\d{7}_normal_\d{1}.jpg^/',$content,$res);

    // echo $res;
    echo ($res);
?>