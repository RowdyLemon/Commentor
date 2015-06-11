<cfimport taglib="../customTags/" prefix="layout" />
<layout:page>
	
	<cfif !session.allowin>
		<script>
			self.location = "index.cfm";
		</script>
	</cfif>

	<header id="Header">
		Thread Submission
	</header>
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
</layout:page>