<?php
	/*** YOUR WEBSITE CONFIG ***/

$config = array(
    /*** Database Config ***/
'LOCALHOST' => 'localhost', // mysql host service
'USERNAME' => 'naptienf_shop', // username
'PASSWORD' => 'naptienf_shop', // password
'DATABASE' => 'naptienf_shop', // database name

'facebook_app_id' => 'null',
'facebook_app_key' => 'null',
'home' => 'https://demo.shopmathuat.com', // url website có ssl và không có / ở cuối

    /*** Gạch Thẻ Config ***/   
'CALLBACK_URL' => 'http://'.$_SERVER['SERVER_NAME'].'/model/card_callback.php', // Không thay đổi
'version' => '7.3.0', // Phiên bản mã nguồn hiện tại
'author' => 'Kunkey - Vũ Duy Lực',
'contact' => 'https://facebook.com/kunkey.riox'
);
?>