<?php
function getHeader(){
	require_once('includes/header.php');
}
function getThemePart($part){
		require_once('includes/'.$part.".php"); //includes/header.php
}
function getFooter(){
	require_once('includes/footer.php');
}