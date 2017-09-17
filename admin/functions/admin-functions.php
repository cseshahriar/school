<?php session_start(); // for all admin page 
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
	//login function
	function isLogIn(){
		return !empty($_SESSION['user']) ? true:false; 
		//true hole return korbe , false holy return korbena
	}
	function needLogIn(){
		$isLogIn = isLogIn(); //function call
		if(!$isLogIn){ //if not login
			header('Location: login.php');
			exit();
		}
	}
?>