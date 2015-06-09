<!--- Get all records from the database that match this users credentials --->
<cfquery name="qVerify" datasource="commentor">
	SELECT user_name, user_pass
	FROM users
	WHERE user_name = '#HTMLEditFormat(input_username)#'
	AND user_pass = '#HTMLEditFormat(input_password)#'
</cfquery>

<cfif qVerify.RecordCount>
	<!--- This user has logged in correctly, change the value of the session.allowin value --->
	<cfset session.allowin = "True" />
	<cfset session.user_name = qVerify.user_name />

	<!--- Now welcome user and redirect to "<strong>members_only.cfm</strong>" --->
	<script>
	alert("Welcome user, you have been successfully logged in!");
	self.location="../www/index.cfm";
	</script>
<cfelse>
		<!--- this user did not log in correctly, alert and redirect to the login page --->
		<script>
			alert("Your credentials could not be verified, please try again!!!");
			self.location="Javascript:history.go(-1)";
		</script>
</cfif>
