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
		if(((strpos($user_right['ports']['right_web_server_view'][$serverInstanz], $server['data']['virtualserver_port']) === false || strpos($user_right['ports']['right_web_server_backups'][$serverInstanz], $server['data']['virtualserver_port']) === false)
				&& $user_right['right_web_global_server'] != $mysql_keys['right_web_global_server']) || $user_right['right_web'] != $mysql_keys['right_web'])
		{
			echo '<script type="text/javascript">';
			echo 	'window.location.href="'.$urlData[0].'";';
			echo '</script>';
		}
		else
		{
			if (isset($_FILES['file']) && strpos($_FILES['file']['type'], 'application/octet-stream') !== false && endsWith($_FILES['file']['name'], ".json"))
			{
				if(endsWith($_FILES['file']['name'], "_server.json"))
				{
					if(file_exists("backup/server/".$_FILES['file']['name']))
					{
						echo "File is already exists!";
					}
					else
					{
						move_uploaded_file($_FILES['file']['tmp_name'], "backup/server/".$_FILES['file']['name']);
					};
				}
				else if(endsWith($_FILES['file']['name'], "_all.json"))
				{
					if(file_exists("backup/channel/".$_FILES['file']['name']))
					{
						echo "File is already exists!";
					}
					else
					{
						move_uploaded_file($_FILES['file']['tmp_name'], "backup/channel/".$_FILES['file']['name']);
					};
				}
				else
				{
					if(file_exists("backup/channel/".$_FILES['file']['name']))
					{
						echo "File is already exists!";
					}
					else
					{
						move_uploaded_file($_FILES['file']['tmp_name'], "backup/channel/".$_FILES['file']['name']);
					};
				};
			}
			else
			{
				echo "Wrong Datatype!";
			};
		};
	}
	else
	{
		echo '<script type="text/javascript">';
		echo 	'window.location.href="'.$urlData[0].'";';
		echo '</script>';
	};
	
	function endsWith($haystack, $needle)
	{
		$length = strlen($needle);
		if ($length == 0)
		{
			return true;
		};

		return (substr($haystack, -$length) === $needle);
	};
?>