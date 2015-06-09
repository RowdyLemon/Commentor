<!DOCTYPE html>
<html>
<head>
	<title>login</title>

</head>
<body>
	<header>
		<h1>The Daily Commentor</h1>
	</header>

	<main>
		<form action="../cfml/login_process.cfm" method="post">
			Username: 
			<input type="text" name="username" value=""><br/>
			Password: 
			<input type="password" name="password" value=""><br/>
			<input type="submit" value="Log In" ><br/>
		</form>
	</main>

</body>
</html>
