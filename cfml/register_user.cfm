<!---<cftry>--->
<cfdump var="#input_username#" />
	<cfquery name="regUser" datasource="commentor">
		INSERT INTO users (user_name, user_pass) VALUES ('#HTMLEditFormat(input_username)#', '#HTMLEditFormat(input_password)#')
	</cfquery>
<!---	<cfcatch type="any">
		<script>
			alert("User is already registered, please login or select a different username");
			self.location = "../www/login.cfm";
		</script>
	</cfcatch>
</cftry> --->

<cfset session.allowin = "True" />
<cfset session.user_name = '#HTMLEditFormat(input_username)#' />
<script>
	alert("Welcome user, you have been successfully logged in!");
	self.location="../www/index.cfm";
</script>
