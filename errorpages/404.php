<?php
	
	/*
		Fehlerheader
	*/
	header("HTTP/1.0 404 Not Found");
	
	/*
		Includes
	*/
	require_once("../lang.php");
	require_once("../config.php");
	
	/*
		Check the Prefix
	*/
	$phpself				=	explode("/", $_SERVER['PHP_SELF']);
	$redirectUrl			=	explode("/", $_SERVER['REDIRECT_URL']);
	$count					=	false;
	$prefix					=	"";
	
	foreach($redirectUrl AS $index => $content)
	{
		if($phpself[$index] == "errorpages")
		{
			$count			=	true;
		};
		
		if($count)
		{
			if(strpos($content, ".") === false)
			{
				$prefix		.=	"../";
			}
			else
			{
				break;
			};
		};
	};
	
	echo $prefix;
?>

<!DOCTYPE HTML SYSTEM>
<html>
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=0.6, minimum-scale=0.6"> 
		
		<title>First-Coder 404 Error</title>
		
		<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
		<link href="https://fonts.googleapis.com/css?family=Courgette|Kreon" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="<?php echo $prefix; ?>css/sonstige/normalize.css" />
		<link rel="stylesheet" type="text/css" href="<?php echo $prefix; ?>css/sonstige/animate.css" />
		<link rel="stylesheet" type="text/css" href="<?php echo $prefix; ?>css/sonstige/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="<?php echo $prefix; ?>css/bootstrap/tether.css" />
		<link rel="stylesheet" type="text/css" href="<?php echo $prefix; ?>css/bootstrap/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="<?php echo $prefix; ?>css/style.css" />
		<?php if(STYLE != '') { ?>
			<link rel="stylesheet" type="text/css" href="<?php echo $prefix; ?>css/themes/<?php echo STYLE; ?>.css" />
		<?php } ?>
		
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
	</head>
	<body>
		<div id="hp">
			<!-- Navigationsleiste -->
			<div class="navbar-fixed-top">
				<!-- Navigation -->
				<nav class="navbar navbar-default">
					<!-- Normales Menu -->
					<div class="container">
						<a class="navbar-brand hidden-xs-down pull-xs-left" href="#"><?php echo HEADING; ?></a>
						<ul class="nav navbar-nav pull-xs-right text-uppercase hidden-md-down">
							<li class="nav-item">
								<a class="nav-link" href="<?php echo $prefix; ?>index.php"><i class="fa fa-fw fa-arrow-left"></i> <?php echo $language['back']; ?></a>
							</li>
						</ul>
						<ul class="nav navbar-nav pull-xs-right text-uppercase hidden-lg-up">
							<li class="nav-item">
								<a class="nav-link" href="<?php echo $prefix; ?>index.php" style="font-size:1.2em;"><i class="fa fa-fw fa-arrow-left"></i>&nbsp;</a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
			
			<!-- Info -->
			<section class="container first-row">
				<div class="card">
					<div class="card-block card-block-header">
						<h4 class="card-title"><i class="fa fa-warning"></i> Ups......</h4>
						<h6 class="card-subtitle text-muted">404 Error | Page not Found</h6>
					</div>
					<div class="card-block">
						<p><?php echo $language['site_not_found_info']; ?></p>
					</div>
				</div>
			</section>
			
			<!-- Footer -->
			<nav class="navbar navbar-copyright navbar-fixed-bottom">
				<div id="copyright" class="col-xs-12 col-md-12">
					<i class="fa fa-copyright"></i> by <a href="https://twitter.com/Tlenmager">Tlenmager</a> ||For <strong>Tlenmager</strong>
				</div>
			</nav>
		</div>
	</body>
</html>