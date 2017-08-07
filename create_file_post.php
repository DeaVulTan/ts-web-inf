<?php 
	
	/*
		Includes
	*/
	require_once("functions.php");
	require_once("functionsMail.php");
	
	/*
		Got Webinterface Moduls
	*/
	$mysql_modul		=		getModuls();
	
	/*
		If the Modul is really aktive...
	*/
	if($mysql_modul['free_ts3_server_application'] == "true")
	{
		$json 											= 		$_POST['wantServerPost'];
		$obj 											= 		json_decode($json);
		
		$fileContent 									= 		array();
		$fileContent['username']						= 		$obj[0];
		if($obj[1] != "")
		{
			$fileContent['password']					= 		crypt($obj[1], $obj[1]);
		};
		
		$fileContent['serverCreateCause']				= 		$obj[2];
		$fileContent['serverCreateWhy']					= 		$obj[3];
		$fileContent['serverCreateNeededSlots']			= 		$obj[4];
		$fileContent['serverCreateServername']			= 		$obj[5];
		$fileContent['serverCreatePort']				= 		$obj[6];
		$fileContent['serverCreateSlots']				= 		$obj[7];
		$fileContent['serverCreateReservedSlots']		= 		$obj[8];
		$fileContent['serverCreatePassword']			= 		$obj[9];
		$fileContent['serverCreateWelcomeMessage']		= 		$obj[10];
		$fileContent['creationTimestamp']				=		time();
		
		if(file_exists($obj[11].$obj[0]."_".$fileContent['serverCreatePort'].".txt"))
		{
			echo "Server Request already exist!";
		}
		else
		{
			if(file_put_contents($obj[11].$obj[0]."_".$fileContent['serverCreatePort'].".txt", json_encode($fileContent)) !== false)
			{
				$mailContent								=		array();
				$mailContent								=		getMail("create_request");
				
				$mailContent								=		str_replace("%heading%", 					HEADING, 									$mailContent);
				$mailContent								=		str_replace("%client%", 					$fileContent['username'], 					$mailContent);
				$mailContent								=		str_replace("%password%", 					$obj[1], 									$mailContent);
				$mailContent								=		str_replace("%serverCreateServername%", 	$fileContent['serverCreateServername'], 	$mailContent);
				$mailContent								=		str_replace("%serverCreatePort%", 			$fileContent['serverCreatePort'], 			$mailContent);
				$mailContent								=		str_replace("%serverCreateSlots%", 			$fileContent['serverCreateSlots'], 			$mailContent);
				$mailContent								=		str_replace("%serverCreateReservedSlots%", 	$fileContent['serverCreateReservedSlots'], 	$mailContent);
				$mailContent								=		str_replace("%serverCreatePassword%", 		$fileContent['serverCreatePassword'], 		$mailContent);
				$mailContent								=		str_replace("%serverCreateWelcomeMessage%", $fileContent['serverCreateWelcomeMessage'], $mailContent);
				
				echo writeMail($mailContent["headline"], $mailContent["mail_subject"], $fileContent['username'], $mailContent["mail_body"]);
			}
			else
			{
				echo "Could not create Server Request!";
			};
		};
	}
	else
	{
		echo "Modul is not aktivated!";
	};