<cfimport taglib="../customTags/" prefix="layout" />
<layout:page>
	<cfif isDefined("url.threadID") AND isDefined("url.title") AND isDefined("url.content") AND isDefined("url.post_date") AND isDefined("url.username") >
		<cfset id = url.threadID />
		<cfset title = url.title />
		<cfset content = url.content />
		<cfset date = url.post_date />
		<cfset username = url.username />
	<cfelse>
		<script>
			self.location = "index.cfm";
		</script>
	</cfif>

	<cfscript>
		if(Ucase(content).endsWith("JPG") or Ucase(content).endsWith("PNG") or Ucase(content).endsWith("BMP") or Ucase(content).endsWith("JPEG") or Ucase(content).endsWith("GIF") or Ucase(content).endsWith("JPG/") or Ucase(content).endsWith("PNG/") or Ucase(content).endsWith("BMP/") or Ucase(content).endsWith("JPEG/") or Ucase(content).endsWith("GIF/"))
		{
			content = "<div id='image'><img src=" & content & " /></div>";
		}
	</cfscript>

	<h1><cfoutput>#title#</cfoutput></h1>
	<cfoutput>#username#</cfoutput></br>
	<cfoutput>#DateFormat(date, "mmmm d, yyyy")#</cfoutput></br>

	<cfoutput>#content#</cfoutput>
</layout:page>
