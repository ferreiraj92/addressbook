<?php
require_once("connect.php");
$name = $_GET['name'];
$title = $_GET['title'];
$company = $_GET['company'];
$cell = $_GET['cell'];
$office = $_GET['office'];
$email = $_GET['email'];
$website = $_GET['website'];
$address = $_GET['address'];

if($title == 'undefined') {
		$title = '';
	}

	if($company == 'undefined') {
		$company = '';
	}

	if($office == 'undefined') {
		$office = '';
	}

	if($email == 'undefined') {
		$email = '';
	}

	if($website == 'undefined') {
		$website = '';
	}

	if($address == 'undefined') {
		$address = '';
	}

if($name == 'undefined' || $cell == 'undefined') {
	$message = "A Name and Cell Number are Required";
	$conarray[] = $message;
}else {

	$sql="INSERT INTO tbl_contact VALUES(NULL, 'user.png','{$name}','{$title}','{$company}', '{$cell}','{$office}','{$email}', '{$website}','{$address}')";
	$result = mysql_query($sql);
	$conarray = array();

	if ($result == 1) { //if the result of the query is equal to 1 row then run email code below
		$message = "User Added";
		$conarray[] = $message;
	}else {
		$message = "Error Adding User";
		$conarray[] = $message;
	}	
}
echo json_encode($conarray, true);
?>



