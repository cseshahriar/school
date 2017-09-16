<?php
	$dbHost ='localhost';
	$dbUsername ='root';
	$dbPassword ='';
	$dbname ='school';
	$dbconnect = mysqli_connect($dbHost, $dbUsername, $dbPassword, $dbname);
	if(!$dbconnect){
		//echo "Database Connection Error!!!";
		die("Failed to connect to MySQL".mysqli_connect_error($con));
	}
	$dbconnect->set_charset("utf8"); //for bangla
