<?php 
	
	/*
		Start the PHP Session
	*/
	session_start();
	
	/*
		Includes
	*/
	require_once("functions.php");
	require_once("functionsTeamspeak.php");
	
	/*
		Get the Modulkeys
	*/
	$mysql_keys			=		getKeys();
	
	/*
		Is user logged in?
	*/
	$user_logged		=		false;
	if($_SESSION['login'] == $mysql_keys['login_key'])
	{
		$user_logged	=		true;
	};
	
	/*
		Get the Rights of the Client
	*/
	$user_right			=		getUserRightsWithTime(getUserRights('pk', $_SESSION['user']['id']));
	
	/*
		Instanz shell
	*/
	if($_POST['action'] == 'instanzShell' && $user_logged && $user_right['right_hp_ts3'] == $mysql_keys['right_hp_ts3'])
	{
		$returnString	=	"<font>".shell_exec("shell/teamspeakCommands.sh ".$_POST['username']." ".$_POST['ip']." ".$_POST['port']." ".$_POST['path']." ".$_POST['command']);
		$returnString	=	str_replace("[33;", "</font><font ", $returnString);
		$returnString	=	str_replace("36m", "class=\"\">", $returnString);
		$returnString	=	str_replace("31m", "class=\"text-danger\">", $returnString);
		$returnString	=	str_replace("32m", "class=\"text-success\">", $returnString);
		$returnString	=	str_replace("38m", "class=\"text-warning\">", $returnString);
		
		echo $returnString;
	};
?>