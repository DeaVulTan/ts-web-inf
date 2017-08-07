<?php
	
	/*
		Includes
	*/
	require_once("functions.php");
	
	/*
		Get the Modul Keys
	*/
	$mysql_keys		=	getKeys();
	
	/*
		Start the PHP Session
	*/
	session_start();
	
	/*
		Is Client logged in?
	*/
	if($_SESSION['login'] != $mysql_keys['login_key'])
	{
		echo '<script type="text/javascript">';
		echo 	'window.location.href="'.$urlData[0].'";';
		echo '</script>';
	};
	
	/*
		Get Client Permissions
	*/
	$user_right				=	getUserRightsWithTime(getUserRights('pk', $_SESSION['user']['id']));
	
	/*
		Get Link informations
	*/
	$urlData				=	explode("?", $_SERVER['HTTP_REFERER']);
	$serverInstanz			=	$urlData[2];
	$serverId				=	$urlData[3];
	
	if($serverInstanz == '' || $serverId == '')
	{
		echo '<script type="text/javascript">';
		echo 	'window.location.href="'.$urlData[0].'";';
		echo '</script>';
	};
	
	/*
		Teamspeak Funktions
	*/
	$tsAdmin = new ts3admin($ts3_server[$serverInstanz]['ip'], $ts3_server[$serverInstanz]['queryport']);
	
	if($tsAdmin->getElement('success', $tsAdmin->connect()))
	{
		// Im Teamspeak Einloggen
		$tsAdmin->login($ts3_server[$serverInstanz]['user'], $ts3_server[$serverInstanz]['pw']);
		
		// Server Select
		$tsAdmin->selectServer($serverId, 'serverId', true);
		
		// Server Info Daten abfragen
		$server = $tsAdmin->serverInfo();
		
		// Keine Rechte
		if(((strpos($user_right['ports']['right_web_server_view'][$serverInstanz], $server['data']['virtualserver_port']) === false || strpos($user_right['ports']['right_web_server_icons'][$serverInstanz], $server['data']['virtualserver_port']) === false)
				&& $user_right['right_web_global_server'] != $mysql_keys['right_web_global_server']) || $user_right['right_web'] != $mysql_keys['right_web'])
		{
			echo '<script type="text/javascript">';
			echo 	'window.location.href="'.$urlData[0].'";';
			echo '</script>';
		}
		else
		{
			// Datei Lokal auf Server speichern
			$informations	=	array();
			if (isset($_FILES['file']) && strpos($_FILES['file']['type'], 'image') !== false)
			{
				$filename		=	"icon_".mt_rand(1000000000, 2147483647);
				move_uploaded_file($_FILES['file']['tmp_name'], 'images/ts_icons/'.$filename);
				
				$informations['status']		=	"done";
				$informations['text']		=	$filename;
				$informations['size']		=	$_FILES['file']['size'];
			}
			else
			{
				$informations['status']		=	"error";
				$informations['text']		=	"Wrong Datatype!";
			};
			
			// Datei auf Teamspeakserver laden und lokal loeschen
			$ft2		=	$tsAdmin->getElement('data', $tsAdmin->ftInitUpload("/".$filename, 0, $_FILES['file']['size']));
			$file		=	file_get_contents("images/ts_icons/".$filename);
			$con_ft		=	fsockopen($ts3_server[$serverInstanz]['ip'], $ft2['port'], $errnum, $errstr, 10);
			fputs($con_ft, $ft2['ftkey']);
			fputs($con_ft, $file);
			unlink("images/ts_icons/".$filename);
			fclose($con_ft);
		};
	}
	else
	{
		echo '<script type="text/javascript">';
		echo 	'window.location.href="'.$urlData[0].'";';
		echo '</script>';
	};
?>