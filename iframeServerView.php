<?php
	
	/*
		Includes
	*/
	require_once("config.php");
	require_once("ts3admin.class.php");
	require_once("lang.php");
	
	/*
		Teamspeak Function
	*/
	$tsAdmin = new ts3admin($ts3_server[$_GET['instanz']]['ip'], $ts3_server[$_GET['instanz']]['queryport']);
	
	if($tsAdmin->getElement('success', $tsAdmin->connect()))
	{
		// Im Teamspeak Einloggen
		$tsAdmin->login($ts3_server[$_GET['instanz']]['user'], $ts3_server[$_GET['instanz']]['pw']);
		
		// Server Select
		$tsServerID = ($tsAdmin->serverIdGetByPort($_GET['port']));
		$tsAdmin->selectServer($tsServerID['data']['server_id'], 'serverId', true);
		
		// Server Info Daten abfragen
		$server = $tsAdmin->serverInfo();
	};
?>

<html>
	<head>
		<link rel="stylesheet" type="text/css" href="css/sonstige/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap/bootstrap.css" />
	</head>
	<body style="color:#<?php echo htmlspecialchars($_GET['color']); ?>;background-color:#<?php echo htmlspecialchars($_GET['bodybgcolor']); ?>;font-size:<?php echo htmlspecialchars($_GET['fontsize']); ?>">
		<div class="col-lg-12 col-md-12" id="tree_loading" style="margin-top:20px;margin-bottom:20px;text-align:center;background-color:#<?php echo htmlspecialchars($_GET['spinbgcolor']); ?>;">
			<h3><?php echo $language['ts_tree_loading']; ?></h3><br /><i style="font-size:100px;" class="fa fa-cogs fa-spin"></i>
		</div>
		<div class="col-lg-12 col-md-12 tree" id="tree" style="padding:20px;display:none;<?php if($server['data']['virtualserver_status'] == 'online') { echo 'background-color:rgba(0,199,0,0.2);'; } else { echo 'background-color:rgba(199, 0,0,0.2);'; } ?>">
			<div id="header_tree">
				<div style="float:left;">
					<div id="server_name" class="servername">&nbsp;&nbsp;<?php echo htmlspecialchars($server['data']['virtualserver_name']); ?></div>
				</div>
				<div style="float:right;text-align:right;" id="server_icon"></div>
				<div style="clear:both;"></div>
			</div>
			<div id="tree_content"></div>
		</div>
	</body>
	
	<!-- Sprachdatein laden -->
	<script language="JavaScript">
		var instanz						=	'<?php echo htmlspecialchars($_GET['instanz']); ?>';
		var port 						= 	'<?php echo htmlspecialchars($_GET['port']); ?>';
		var treeInterval				= 	<?php echo TEAMSPEAKTREE_INTERVAL; ?>;
	</script>
	<script src="js/jquery/jquery-2.2.0.js"></script>
	<script src="js/webinterface/teamspeakTree.js"></script>
</html>