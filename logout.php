<?php
	
	/*
		Start the PHP Session
	*/
	session_start();
	
	/*
		Delete PHP Session
	*/
	$_SESSION = array();

	/*
		Delete all Cookies, too
	*/
	if (ini_get("session.use_cookies"))
	{
		$params = session_get_cookie_params();
		setcookie(session_name(), '', time() - 42000, $params["path"],
			$params["domain"], $params["secure"], $params["httponly"]
		);
	};

	/*
		Destroy the Session
	*/
	session_destroy();
?>
