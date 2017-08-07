<?php
	
	/*
		SQL Connection
	*/
	
	$string						=	SQL_Mode.':host='.SQL_Hostname.';port='.SQL_Port.';dbname='.SQL_Datenbank.'';
	if(SQL_SSL != "0")
	{
		$string					.=	';sslmode=require';
	};
	
	try
	{
		$databaseConnection 	= 	new PDO($string, SQL_Username, SQL_Password);
	}
	catch (PDOException $e)
	{
		echo "Failed to get DB handle: " . $e->getMessage() . "\n";
		exit;
	};
?>