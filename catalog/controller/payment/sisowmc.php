<?php

include 'sisow.php';

class ControllerPaymentSisowMC extends ControllerPaymentSisow {
	public function index() {
		return $this->_index('sisowmc');
	}

	public function notify() {
		$this->_notify('sisowmc');
	}

	public function redirectbank() {
		$this->_redirectbank('sisowmc');
	}
}
?>
