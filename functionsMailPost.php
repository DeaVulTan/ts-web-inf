<?php 

	
	/*
		PHP Session
	*/
	session_start();
	
	/*
		Includes
	*/
	require_once("functions.php");
	require_once("functionsMail.php");
	
	/*
		Got Webinterface Moduls / Rightkeys
	*/
	$mysql_modul		=		getModuls();
	$mysql_keys			=		getKeys();
	
	/*
		Get User rights
	*/
	$user_right			=		getUserRightsWithTime(getUserRights('pk', $_SESSION['user']['id']));
	
	/*
		Is user logged
	*/
	$user_logged		=		false;
	if($_SESSION['login'] == $mysql_keys['login_key'])
	{
		$user_logged	=		true;
	};
	
	/*
		Write a Mail
	*/
	if($_POST['action'] == 'writeMail' && $user_logged && $user_right['right_hp_mails'] == $mysql_keys['right_hp_mails'])
	{
		if(isSet($_POST['mail']) && isSet($_POST['body']))
		{
			echo writeMail($_POST['headline'], $_POST['title'], $_POST['mail'], $_POST['body']);
		}
		else
		{
			echo "Parameter are not successfull!";
		};
	};
	
	/*
		Save a Mail
	*/
	if($_POST['action'] == 'saveMail' && $user_logged && $user_right['right_hp_mails'] == $mysql_keys['right_hp_mails'])
	{
		if(isSet($_POST['request']) && isSet($_POST['body']))
		{
			echo saveMail($_POST['headline'], $_POST['title'], $_POST['request'], $_POST['body']);
		}
		else
		{
			echo "Parameter are not successfull!";
		};
	};
?>