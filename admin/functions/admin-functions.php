<?php
	require_once('../config.php');
	function getAdminHeader(){
		require_once('includes/header.php');	
	}
	function getAdminSidebar(){
		require_once('includes/left-sidebar.php');	
	}
	function getBreadcrum(){
		include_once('includes/breadcrum.php');	
	}
	function getAdminPart($addSection){
		include_once('includes/'.$addSection);	
	}
	function getAdminFooter(){
		require_once('includes/footer.php');	
	}
?>