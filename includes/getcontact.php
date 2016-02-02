<?php
error_reporting(0);
header('Content-Type: application/json');
require_once("connect.php");
$q = $_GET['q'];
$sql="SELECT * FROM tbl_contact WHERE contact_id =".$q;
$result = mysqli_query($sql);
$conarray = array();

while ($row = mysqli_fetch_array($result)){
	$conarray[] = $row;
}

echo json_encode($conarray, true);
?>



