<!DOCTYPE html>
<html>
<head>
	<title>commentor</title>

	<link href="../Stylesheets/index.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<header id="header">
		<h1>The Daily Commentor</h1>
	</header>

	<nav  id="navBar">
		<cfoutput>
			<ul id="sorting">
				<li><a href="">Oldest</a></li>
				<li><a href="">Newest</a></li>
				<li><a href="">Popular</a></li>
				<li><a href="">New Post</a></li>
				<cfif session.allowin>
					<li>
						<a href="../cfml/logout.cfm">Logout</a>
					</li>
					<li>Welcome #session.user_name#</li>
				<cfelse>
					<li><a href="login.cfm">Login</a></li>
				</cfif>
			</ul>
		</cfoutput>
	</nav>

	<main id="comments">

	</main>

</body>
</html>

