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
				<cfif session.allowin>
					<li><a href="post.cfm">New Post</a></li>
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
		<cfquery name="threads" datasource="commentor">
			SELECT * 
			FROM thread
		</cfquery>
		<ul id="threads">
			<cfoutput>
				<cfloop query="threads">
					<li>
						#threads.user_name#</br>
						<a href="thread.cfm?threadID=#threads.threadID#&amp;title=#threads.title#&amp;content=#threads.content#&amp;post_date=#threads.post_date#&amp;username=#threads.user_name#" >#threads.title#</a>
						</br>
					</li>
				</cfloop>
			</cfoutput>
		</ul>
	</main>

</body>
</html>

