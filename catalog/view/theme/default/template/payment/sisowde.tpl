<!--<h2><?php echo $text_header; ?></h2>-->
<div id="sisowde_payment" class="checkout-content">
  <img src="https://www.sisow.nl/Sisow/images/ideal/payment_small.png" border="0" />
</div>
<div class="buttons pull-right">
  <input type="button" value="<?php echo $button_confirm; ?>" id="sisowde_confirm" class="btn btn-primary" />
</div>

<script type="text/javascript"><!--
$('#sisowde_confirm').on('click', function() {
	$.ajax({ 
		type: 'POST',
		url: 'index.php?route=payment/sisowde/redirectbank',
		data: $('#sisowde_payment :input'),
		dataType: 'json',
		cache: false,
		beforeSend: function() {
			$('#sisowde_confirm').button('loading');
		},
		complete: function() {
			$('#sisowde_confirm').button('reset');
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
