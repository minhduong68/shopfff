<?php
require $_SERVER['DOCUMENT_ROOT'].'/Core.php';
$kun = new System;
$user = $kun->user();

if(!$_SESSION['token']) {
    die("<script>swal('Lỗi', 'Bạn Cần Đăng Nhập', 'error');setTimeout(function(){location.href='/signin.html';}, 1500);</script>");
}

$id = $_POST['id'];
$row = mysqli_fetch_assoc(mysqli_query($kun->connect_db(), "SELECT * FROM `nickff` WHERE `id`='".$id."'"));
?>
<style type="text/css">
	.modal-title {
    font-weight: 500;
    font-size: 18px;
    color: #f6f6f7;
}
.help-block {
    color: #ffffff;
    font-size: 16px;
}
</style>
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">×</span>
    </button>
    <h4 class="modal-title">Xác nhận mua nick</h4>
</div>
                <div class="modal-body" id="buy">
                    <p style="display: none;" id="result"></p>
				<table class="table table-striped">
					<tbody><tr>
						<th colspan="2">Xác nhận mua nick Freefire #<?php echo $row['id'];?></th>
					</tr>
						<tr>
							<td>Nhà phát hành:</td>
							<th class="text-danger">Garena</th>
						</tr>
						<tr>
							<td>Loại:</td>
							<th class="text-danger">Nick Freefire</th>
						</tr>
						<tr>
							<td>Giá tiền:</td>
							<th class="text-info"><?php echo number_format($row['giatien']);?>đ</th>
						</tr>

				</tbody>

			</table>

<div class="modal-body">
        <div class="form-horizontal">
			<div class="form-group m-t-12">
                <label class="col-md-3 control-label"><b>Mã GiftCode:</b></label>
                <div class="col-md-6">
                    <div class="input-group c-square">
                        <input type="text" class="form-control c-square c-theme show_password" id="giftcode" placeholder="GiftCode" style="height: 36px;">
                        <span class="input-group-btn">
                                    <button style="background-color: #d8d8d8;" class="btn btn-default c-font-dark" type="button" id="check_gifcode">Kiểm Tra</button>
                                </span>
                    </div>
                    <span id="result_check" class="help-block">Click vào kiểm tra GiftCode để kiểm tra mã GiftCode</span>
                </div>
            </div>
</div>
</div>




					                        <div class="modal-footer">
							<button id="mua" type="submit" class="btn c-theme-btn c-btn-border-2x c-btn-square c-btn-bold c-btn-uppercase" Onclick="mua_acc('<?php echo $row['id'];?>')">Mua luôn</button>
                            <button type="button" class="btn c-theme-btn c-btn-border-2x c-btn-square c-btn-bold c-btn-uppercase" data-dismiss="modal">Đóng</button>
                        </div>
										                </div>


</div>
	</div>
</div>
<script>
function mua_acc(id) {
    document.getElementById("mua").disabled = true;

$.ajax({
                method: "POST",
                url: "/model/freefire/xuly.php",
                data: {
                    id: id,
                    giftcode: $('#giftcode').val()
                },
                success : function(response){
                    $('.close').click();
                        $('#result').html(response);
                }
            });


}

$(document).ready(function() {
	$('#check_gifcode').click(function() {
            $.ajax({
                method: "POST",
                url: "/model/freefire/check_giftcode.php",
                data: {
                    giftcode: $('#giftcode').val()
                },
                success : function(response){
                        $('#result_check').html(response);
                }
            });
	});
});	




</script>
  
 
</div>