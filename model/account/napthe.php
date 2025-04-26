<?php
require $_SERVER['DOCUMENT_ROOT'] . '/Core.php';

$kun = new System;
$user = $kun->user();
$_get_settings = $kun->settings('napthe');



if (!$_SESSION['token']) {
    die(json_encode(array('status' => false, 'msg' => 'Bạn Chưa Đăng Nhập!')));
}


switch ($_get_settings['kieunap']) {
    case 'napcham':

        $loaithe = $_POST['type'];
        $menhgia = $_POST['amount'];
        $seri = str_replace('/[^0-9]/', '', $_POST['serial']);
        $mathe = str_replace('/[^0-9]/', '', $_POST['pin']);

        $arr_loaithe = array("VIETTEL", "VINAPHONE", "MOBIFONE");
        $arr_menhgia = array("10000", "20000", "50000", "100000", "200000", "500000", "1000000");

        if (!in_array($loaithe, $arr_loaithe)) die(json_encode(array('status' => false, 'msg' => 'Lỗi Hệ Thống!')));
        if (!in_array($menhgia, $arr_menhgia)) die(json_encode(array('status' => false, 'msg' => 'Lỗi Hệ Thống!')));
        if (!$seri) die(json_encode(array('status' => false, 'msg' => 'Vui Lòng Nhập Vào Mã Serial!')));
        if (!$mathe) die(json_encode(array('status' => false, 'msg' => 'Vui Lòng Nhập Vào Mã Thẻ!')));
        if ($kun->check_int($seri) == false) die(json_encode(array('status' => false, 'msg' => 'Mã Serial Phải Là Dạng Số!')));

        if ($kun->check_int($mathe) == false) die(json_encode(array('status' => false, 'msg' => 'Mã Thẻ Phải Là Dạng Số!')));

        if (strlen($seri) < 10) die(json_encode(array('status' => false, 'msg' => 'Độ dài mã Seri không hợp lệ!')));
        if (strlen($mathe) < 10) die(json_encode(array('status' => false, 'msg' => 'Độ dài mã thẻ không hợp lệ!')));
        $tranid = rand(1000, 999999);
        $cmd = "INSERT INTO `napthe` SET `username` = '" . $user['username'] . "', `type` = '" . $loaithe . "', `amount` = '" . $menhgia . "', `serial` = '" . $seri . "', `pin` = '" . $mathe . "', `tranid` = '" . $tranid . "', `status` = '2', `time` = '" . time() . "'";
        mysqli_query($kun->connect_db(), $cmd);
        die(json_encode(array('status' => true, 'msg' => 'Thẻ ' . $loaithe . ' mệnh giá ' . number_format($menhgia) . 'đ đã được lưu vào hệ thống thành công! Vui lòng chờ admin duyệt thẻ trong 30p - 1h!')));
        break;


    case 'naptudong':
        if (!isset($_POST['type']) || !isset($_POST['serial']) || !isset($_POST['pin']) || !isset($_POST['amount'])) {
            die(json_encode(array('status' => false, 'msg' => 'Bạn cần nhập đầy đủ thông tin!')));
        } else {

            $type = $_POST['type'];
            $serial = $_POST['serial'];
            $pin = $_POST['pin'];
            $amount = $_POST['amount'];

            $check = mysqli_num_rows(mysqli_query($kun->connect_db(), "SELECT * FROM `napthe` WHERE `pin` = '" . $pin . "' AND `serial` = '" . $serial . "'"));

            if ($check > 0) {
                die(json_encode(array('status' => false, 'msg' => 'Thẻ này đã tồn tại trên hệ thống!')));
            } else {


                $tranid = rand(10000, 99999);  /// Cái này có thể mà mã order của bạn, nó là duy nhất (enique) để phân biệt giao dịch.

                $api_key = $_get_settings['api_key'];
                $dataPost = array(
                    "APIKey" => $api_key,
                    "NetworkCode" => $type,
                    "PricesExchange" => $amount,
                    "NumberCard" => $pin,
                    "SeriCard" => $serial,
                    "IsFast" => true,
                    "RequestId" => $tranid
                );
                $curl = curl_init();

                curl_setopt_array($curl, array(
                CURLOPT_URL => "http://partner.cardvip.vn/api/createExchange",
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => "",
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => "POST",
                CURLOPT_POSTFIELDS => json_encode($dataPost),
                CURLOPT_HTTPHEADER => array(
                    "Content-Type: application/json"
                ),
                ));

                $response = curl_exec($curl);
                curl_close($curl);
                $post = json_decode($response, true);
                
                if ($post['status'] == 200) {

                    $cmd = "INSERT INTO `napthe` SET `username` = '" . $user['username'] . "', `type` = '" . $type . "', `amount` = '" . $amount . "', `serial` = '" . $serial . "', `pin` = '" . $pin . "', `tranid` = '" . $tranid . "', `status` = '2', `time` = '" . time() . "'";

                    mysqli_query($kun->connect_db(), $cmd);
                    die(json_encode(array('status' => true, 'msg' => 'Thẻ ' . $type . ' mệnh giá ' . number_format($amount) . 'đ đã được lưu vào hệ thống thành công! Vui lòng chờ duyệt thẻ trong 30s - 2 phút!')));
                } 
                else if ($post['status'] == 401){
                    die(json_encode(array('status' => false, 'msg' => 'Thẻ sai định dạng')));
                }
                else if ($post['status'] == 400){
                    die(json_encode(array('status' => false, 'msg' => 'Thẻ đã tồn tại trên hệ thống')));
                }
                else{
                    die(json_encode(array('status' => false, 'msg' => 'Có lỗi xảy ra, vui lòng thử lại')));
                }
            }
        }
        break;
}
