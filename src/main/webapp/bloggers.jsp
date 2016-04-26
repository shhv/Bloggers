<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Basics</title>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/initial.css" />
<link rel="stylesheet" type="text/css" href="css/basics.css" />
<script type="text/javascript" src="scripts/jquery-2.1.3.js"></script>
<script src="js/comment.js"></script>
<script src="js/bloggers.js"></script>
</head>
<body onload="execute()">
	<div class="outerClass" id="outer">
		<div id="templateTitle" style="display: none;">
			<div id="hdr">
				<h1 id="title">headValue</h1>
			</div>
		</div>
		<div id="addHead">
			<div id="hdr" style="display: none;">
				<h1 id="title"></h1>
			</div>
		</div>

		<div id="menu">
			<ul>
				<li><a href="landingPage.jsp">Home</a></li>
				<li><a href="about.jsp">About</a></li>
				<li><a href="contact.jsp">Contact</a></li>
				<li><a href="index.jsp">Logout</a></li>
			</ul>
		</div>
		<div id="cont">
			<div id="templates" style="display: none;">
				<p>description</p>
			</div>

			<div id="dataDescription">
				<p></p>
			</div>

			<div class="commentClass" id="templatesComment"
				style="display: none;">
				<p>comment</p>
			</div>

			<div style="display: none;">
				<p class="commentClass" id="commentDescription"></p>
			</div>
		</div>
		<div id="formTemplate" style="display: none;">
			<form name="myform" id="comment-form" method="get"
				action="postBloggerComment.jsp">
				<textarea name="comments" id="comment"></textarea>
				<textarea name="title" id="value" style="display: none;" >ID</textarea>
				<div id="comment-button">
					<br> <input type="submit" value="Submit" />
				</div>
			</form>
		</div>
		<div id="formId">
			<form name="myform" method="get"
				action="postBloggerComment.jsp" id="comment-form"
				style="display: none;">
				<textarea name="comments" id="comment"></textarea>
				<textarea name="title" id="value" style="display: none;" >ID</textarea>
				<div id="comment-button">
					<br> <input type="submit" value="Submit" />
				</div>
			</form>
		</div>
		</div>
	</div>
	</div>
	</body>
</html>
