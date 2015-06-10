<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../Stylesheets/post.css">
	<title>Post</title>
</head>
<body>
	<form action="../cfml/user_post.cfm" method="POST">
		Text Post</br>
		<label id="">Title: <input type="text" name="title" id="title" required></label></br>
		<label id="">Content: <input type="text" name="content" id="content" required></label></br>
		<input type="submit" id="submit_text" name="submit_text" value="Submit">
	</form>
	</br>
	<form action="../cfml/user_post.cfm" method="POST">
		Image Post</br>
		<label id="">Title: <input type="text" name="title" id="title" required></label></br>
		<label id="">Image URL: <input type="text" name="content" id="content" required></label></br>
		<input type="submit" id="submit_image" name="submit_image" value="Submit">
	</form>

</body>
</html>
