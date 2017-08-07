<?php
	
	/*
		Includes
	*/
	require_once("config.php");
	
	/*
		Installed Languages (add here your language if you have a new one)
	*/
	$language												=	array();
	$installedLanguages										=	array(
																	"russian" => "Tlenmager"
																);
	if(LANGUAGE == '' || LANGUAGE == 'russian')
	{
		include("lang/en.php");	
	};
?>