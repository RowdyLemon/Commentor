<cfif structKeyExists(form, "fieldNames") >
	<cfquery name="comment" datasource="commentor">
		INSERT INTO userComments (user_name, comment, post_date, threadID)
		VALUES ('#session.user_name#', '#form.commentName#', #Now()#, '#url.threadID#')
	</cfquery>
</cfif>

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

	<cfif session.allowin>	
		<cfoutput>
		<form action="" method="POST" id="submitComment">
			<textarea name="commentName" id="commentName" rows="5" cols="70" required></textarea></br>
			<input type="submit">
		</form>
		</cfoutput>
	</cfif>

	<script>
		// $("#submitComment").submit(function(event)
		// {
		// 	event.preventDefault();

		// 	var $form = $(this), 
		// 		comment = $form.find("#commentName").val(),
		// 		earl = $form.attr("action");

		// 	var posting = $.post(earl, {commentName: comment, threadID: "#id#"});

		// 	posting.done(function(data)
		// 	{
		// 		var content = $(data).find("#result");
		// 		$("#userComments").append(content);
		// 	});

		// 	console.log("Hey");
		// });
	</script>

	<cfquery name="postedComments" datasource="commentor">
		SELECT * 
		FROM userComments
		WHERE threadID = '#id#'
	</cfquery>

	<ul id="userComments">
		<cfoutput>
			<cfloop query="postedComments">
				<li>
					#postedComments.user_name#  #DateFormat(postedComments.post_date, "mmmm d, yyyy")#</br>
					#postedComments.comment#</br>
				</li>
			</cfloop>
		</cfoutput>
	</ul>  

</layout:page>
 