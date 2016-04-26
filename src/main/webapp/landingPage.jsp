<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Design Blog</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/landingstyle.css" rel="stylesheet" type="text/css" />
<!--[if lt IE 7]><style type="text/css">div { behavior: url(iepngfix.htc); }</style><![endif]-->
<script type="text/javascript" src="scripts/jquery-2.1.3.js"></script>
<script src="js/getTitles.js"></script>
<title>Search Box Example 2 - default placeholder text gets cleared on click</title>
<meta name="ROBOTS" content="NOINDEX, NOFOLLOW" />
<!-- Add jQuery to your website if you don't have it already -->
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- JAVASCRIPT to clear search text when the field is clicked -->
<script type="text/javascript">
$(function() {
	$("#tfq2b").click(function() {
		alert("clicked");
		if ($("#tfq2b").val() == "Search our website"){
			$("#tfq2b").val(""); 
		}
	});
});
</script>
</head>
<body onload="getTitles()">
	<div id="container_wrapper1">
		<div id="container_wrapper2">
			<div id="container">
				<div id="header">
					<div id="logo"></div>
				</div>
				<div id="menu">
					<ul>
						<li><a href="create.jsp">New</a></li>
						<li><a href="about.jsp">About</a></li>
						<li><a href="contact.jsp">Contact</a></li>
						<li><a href="index.jsp">Logout</a></li>
					</ul>
				</div>
				<div id="content">
					<div id="left_column">
						<div class="postbody" id="templates" style="display: none;">
							<div>
								<h1><a id="Content" href="bloggers.jsp?id=ID">title</a></h1>
							</div>
							<p>description</p>
							<div class="comment">
								Comments(value)
							</div>
						</div>
						<div style="display: none;">
								<h1><a id="Content" href="bloggers.jsp?id=ID">title3</a></h1>
						</div>
						<p id="dataDescription"></p>
						<div class="comment" style="display: none;"></div>
					</div>
					<div id="right_column">
					<div class="postbody">
						<form id="tfnewsearch" method="get" action="http://www.google.com">
							<input type="text" id="tfq2b" class="tftextinput2" name="q" size="21" maxlength="120" value="Search our website"> 
							<input type="submit" value=">" class="tfbutton2">
						</form>
						</div>
					<div class="tfclear"></div>
					</div>
					</div>
				</div>
			</div>
		</div>
</html>
