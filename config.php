<?php
	
	/*
		Info:
		Advanced: This settings are just in this config editable.
	*/
	
	/*
		SQL Login Information
	*/
	define("SQL_Hostname", "localhost");
	define("SQL_Datenbank", "database");
	define("SQL_Username", "user");
	define("SQL_Password", "pass");
	define("SQL_Port", "3306");
	define("SQL_Mode", "mysql");
	define("SQL_SSL", "0");
	
	/*
		Mailsettings
	*/
	define("MAILADRESS", "mail@my-domain.ru");
	define("MAIL_SMTP", "false");								// true if you want use SMTP Server (default: false)
	define("MAIL_SMTP_HOST", "");								// SMTP Host
	define("MAIL_SMTP_PORT", "");								// SMTP Port
	define("MAIL_SMTP_USERNAME", "");							// SMTP Username
	define("MAIL_SMTP_PASSWORD", "");							// SMTP Password
	define("MAIL_SMTP_DEBUG", "1");								// SMTP Debug options 1 = Errors & Messages 2 = Only Messages
	
	/*
		Teamspeak 3 Heading (Dont take a Word that is to long)
	*/
	define("HEADING", "TeamSpeak");
	
	/*
		With this name will the Webinterface & Botinterface connect to your Teamspeakserver
	*/
	define("TS3_CHATNAME", "Server");
	
	/*
		Language from your Webinterface (default: english)
	*/
	define("LANGUAGE", "russian");
	
	/*
		Insert here your Stylesheet you want to use (it must be in /css/themes/)
		Leave blank to use the normal Style
	*/
	define("STYLE", "minecraft");
	
	/*
		Masterserver, to show your Main / Supportserver on your Webpage
		Note: If you want use this feature make sure its on the Webpagesettings set!
	*/
	define("MASTERSERVER_INSTANZ", "0");
	define("MASTERSERVER_PORT", "9987");
	
	/*
		Advanced
		Change the Interval for all Teamspeakviewers in milliseconds. If you want to
		deaktivate the interval and just want one build (like normal viewers), write -1.
		
		Warning
		Please go under 2000 with the value, cause if your internet connection is not that
		good, the site will crash your Browser!
		
		Examples
			2000	=	2 seconds (default)
			4000	=	4 seconds
			-1		=	just load once
	*/
	define("TEAMSPEAKTREE_INTERVAL", "-1");
	
	/*
		Advanced
		Time how often the Stats for the Dashboard will be refreshed (Just for Windows users).
		The Value is in minutes.
		
		Examples
			5		=	5 minutes (default)
			10		=	10 minutes
			20		=	20 minutes
	*/
	define("DASHBOARD_REFRESHTIME", "5");
	
	/*
		Advanced
		Default Teamspeak "Server Create" Configuration
	*/
	$ts3_server_create_default['servername']						=	'Tlenmager';
	$ts3_server_create_default['slots']								=	'32';
	$ts3_server_create_default['welcome_message']					=	'Добро пожаловать на наш сервер';
	$ts3_server_create_default['reserved_slots']					=	'0';
	$ts3_server_create_default['password']							=	'';
	
	$ts3_server_create_default['host_message']						=	'';
	$ts3_server_create_default['host_message_show']					=	'0';				// Host message show 0=No message 1=Show message in Log 2=Show modal message 3=Modal message and exit
	$ts3_server_create_default['host_url']							=	'';
	$ts3_server_create_default['host_banner_url']					=	'';
	$ts3_server_create_default['host_banner_int']					=	'';
	$ts3_server_create_default['host_button_gfx']					=	'';
	$ts3_server_create_default['host_button_tip']					=	'';
	$ts3_server_create_default['host_button_url']					=	'';
	
	$ts3_server_create_default['auto_ban_count']					=	'';
	$ts3_server_create_default['auto_ban_time']						=	'';
	$ts3_server_create_default['remove_time']						=	'';
	
	$ts3_server_create_default['points_tick_reduce']				=	'';
	$ts3_server_create_default['points_needed_block_cmd']			=	'';
	$ts3_server_create_default['points_needed_block_ip']			=	'';
	
	$ts3_server_create_default['upload_bandwidth_limit']			=	'';
	$ts3_server_create_default['upload_quota']						=	'';
	$ts3_server_create_default['download_bandwidth_limit']			=	'';
	$ts3_server_create_default['download_quota']					=	'';
	
	$ts3_server_create_default['virtualserver_log_client']			=	'1';				// Log Clients no=0 yes=1
	$ts3_server_create_default['virtualserver_log_query']			=	'0';				// Log Query no=0 yes=1
	$ts3_server_create_default['virtualserver_log_channel']			=	'0';				// Log Channel no=0 yes=1
	$ts3_server_create_default['virtualserver_log_permissions']		=	'1';				// Log Permissions no=0 yes=1
	$ts3_server_create_default['virtualserver_log_server']			=	'1';				// Log Server no=0 yes=1
	$ts3_server_create_default['virtualserver_log_filetransfer']	=	'0';				// Log Filetransfer no=0 yes=1
	
	require_once("config_instanz.php");
?>
