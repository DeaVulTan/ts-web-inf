

/*
	Choose a new Version
*/
function ShowChangelog(VersionNumber)
{
	$(".step-1").slideUp("slow", function()
	{
		var dataString 		= 	'action=getChangelog&versionnumber='+VersionNumber;
		$.ajax({
			type: "POST",
			url: "functions.php",
			data: dataString,
			cache: true,
			async: true,
			success: function(data){
				var informations 	=	JSON.parse(data);
				
				if(informations[0].includes("ver"))
				{
					$(".changelogHeadline").text(informations[0]);
					$(".changelogTime").text(informations[1]);
					for(var i = 2;i < informations.length;i++)
					{
						if(informations[i][0] == "-" && informations[i][1] == "-")
						{
							document.getElementById("changelogContent").innerHTML += "<p>"+informations[i]+"</p>";
						}
						else
						{
							switch(informations[i][0])
							{
								case "+":
									document.getElementById("changelogContent").innerHTML += "<p class=\"text-success\">"+informations[i]+"</p>";
									break;
								case "-":
									document.getElementById("changelogContent").innerHTML += "<p class=\"text-danger\">"+informations[i]+"</p>";
									break;
							};
						};
					};
				}
				else
				{
					$(".changelogHeadline").text(informations);
				};
				
				$("#updateAction").attr("onClick", "updateNow('"+VersionNumber+"')");
				
				$(".step-2").slideDown("slow");
			}
		});
	});
};

/*
	Update the Webinterface
*/
function updateNow(VersionNumber)
{
	$(".step-2").slideUp("slow", function()
	{
		$(".step-3").slideDown("slow", function()
		{
			var dataString 		= 	'action=updateWi&versionnumber='+VersionNumber;
			$.ajax({
				type: "POST",
				url: "functions.php",
				data: dataString,
				cache: true,
				async: true,
				success: function(data){
					$(".step-3").slideUp("slow", function()
					{
						document.getElementById("changeOutput").innerHTML = data;
						$(".step-4").slideDown("slow");
					});
				}
			});
		});
	});
};

/*
	Back to Versionlist
*/
function backToMainMenu()
{
	parent.window.location.reload();
};