<?php

// Start of session
session_start();

// Creating a new php file
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
require_once ('config.php');
$json = array();
$json=array('response' => 'error',
                'data'=> '0'
);


$email = $_SESSION["Email"];


$mysql_qry= "SELECT ServiceType FROM services WHERE Email='$email'";
	
if ($result= mysqli_query($GLOBALS['cont'], $mysql_qry)) 
{
	$num_of_rows = $result->num_rows;
	$tem_arr= array();
	
	if ($num_of_rows>0)
	{
		while ($row= mysqli_fetch_assoc($result))
		{
			$tem_arr[]= $row;
		}
		$json['data']=$tem_arr;
		echo json_encode($json);
	}
} 
else
{
	$json['response'] = "Error: " . $mysql_qry . "<br>" . mysqli_error($GLOBALS['cont']);
	echo json_encode($json);
}








?>

