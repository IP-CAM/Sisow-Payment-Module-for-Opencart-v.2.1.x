<!--<h2><?php echo $text_header; ?></h2>-->
<div id="sisowspraypay_payment" class="checkout-content">
  <img src="https://www.sisow.nl/logo/payment/spraypay.png"/>
</div>
<div class="buttons pull-right">
  <input type="button" value="<?php echo $button_confirm; ?>" id="sisowspraypay_confirm" class="btn btn-primary" />
</div>

<script type="text/javascript"><!--
$('#sisowspraypay_confirm').on('click', function() {
	$.ajax({ 
		type: 'POST',
		url: 'index.php?route=payment/sisowspraypay/redirectbank',
		data: $('#sisowideal_payment :input'),
		dataType: 'json',
		cache: false,
		beforeSend: function() {
			$('#sisowspraypay_confirm').button('loading');
		},
		complete: function() {
			$('#sisowspraypay_confirm').button('reset');
		},		
		success: function(json) {
			if (json['error']) {
				alert(json['error']);
			}
			
			if (json['redirect']) {
				location = json['redirect'];
			}
		}		
	});
});
//--></script> 
