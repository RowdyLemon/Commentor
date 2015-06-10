<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<cfset id = url.threadID />
	<cfset title = url.title />
	<cfset content = url.content />
	<cfset date = url.post_date />
	<cfset username = url.username />

	<cfif findNoCase("http", '#content#')>
		<cfset content = "<img src=""" & #content# & """ />" />
	</cfif>

	<h1><cfoutput>#title#</cfoutput></h1>
	<cfoutput>#username#</cfoutput></br>
	<cfoutput>#date#</cfoutput></br>

	<cfoutput>#content#</cfoutput>
</body>
</html>