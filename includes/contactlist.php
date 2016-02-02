<?php
/*
	function getList(){
		require_once("connect.php");
		$sql="SELECT contact_id, contact_name FROM tbl_contact";
		$result = mysql_query($sql);
		return $result;
	}
*/
error_reporting(0);
header('Content-Type: application/json');
require_once("connect.php");
$sql="SELECT contact_id, contact_name FROM tbl_contact ORDER BY contact_name ASC";
$result = mysqli_query($sql);
$conarray = array();

while ($row = mysqli_fetch_array($result)){
	$conarray[] = $row;
}

echo json_encode($conarray, true);

?>

