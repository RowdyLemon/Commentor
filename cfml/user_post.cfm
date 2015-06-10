<cfif IsDefined("Form.submit_text") >
	<cftry>
		<cfquery name="post_text" datasource="commentor">
			INSERT INTO thread (user_name, title, content, post_date, popularity) 
			VALUES ('#session.user_name#', '#Form.title#', '#Form.content#', #Now()#, 0)
		</cfquery>
		<cfcatch type="any">
			<script>
				alert("Failed to submit post");
				self.location = "../www/post.cfm";
			</script>
		</cfcatch>
	</cftry>
	<script>
		alert("successfully posted new thread");
		self.location = "../www/";
	</script>
<cfelseif IsDefined("Form.submit_image") >
	<cfset img_url = '#Form.content#' />
	<cftry>
		<cfquery name="post_image" datasource="commentor">
			INSERT INTO thread (user_name, title, content, post_date, popularity) 
			VALUES ('#session.user_name#', '#Form.title#', '#img_url#', #Now()#, 0)
		</cfquery>
		<cfcatch type="any">
			<script>
				alert("Failed to submit post");
				self.location = "../www/post.cfm";
			</script>
		</cfcatch>
	</cftry>
	<script>
		alert("successfully posted new thread");
		self.location = "../www/";
	</script>
</cfif>