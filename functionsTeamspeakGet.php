<?php 
	
	/*
		Session start
	*/
	session_start();
	
	/*
		Includes
	*/
	require_once("functions.php");
	require_once("functionsTeamspeak.php");
	
	/*
		Get Modul Keys
	*/
	$mysql_keys			=		getKeys();
	
	/*
		Is Client logged in ?
	*/
	$user_logged		=		false;
	if($_SESSION['login'] == $mysql_keys['login_key'])
	{
		$user_logged	=		true;
	};
	
	/*
		Get all Client Permissions
	*/
	$user_right			=		getUserRightsWithTime(getUserRights('pk', $_SESSION['user']['id']));
	
	/*
		Download a File from a Teamspeakserver
	*/
	if($_GET['action'] == 'downloadFileFromFilelist' && $user_logged && (strpos($user_right['ports']['right_web_file_transfer'][$_GET['instanz']], $_GET['port']) !== false || $user_right['right_web_global_server'] == $mysql_keys['right_web_global_server']))
	{
		echo downloadFileFromFilelist($_GET['path'], $_GET['filename'], $_GET['cid'], $_GET['port'], $_GET['instanz']);
	};
?>