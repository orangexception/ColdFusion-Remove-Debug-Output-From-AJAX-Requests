<cfcomponent output= "false">
	
	<cfset this.name= "AJAX Debug Output" />

	<cffunction name= 		"onRequestEnd"
				returnType= "void"
				hint= 		"I run on the end of requests (how clever).">
					
		<cfif isAJAXRequest()>
			<cfsetting	showDebugOutput= "false"	enableCFOutputOnly= "true" />
			<cfcontent	reset= "true" />
			<cfheader	name= "Expires"	value= "#now()#" />
			<cfheader	name= "Pragma"	value= "no-cache" />
			<cfoutput>#trim( request.AJAXResponse )#</cfoutput><cfabort />

		</cfif>
		
	</cffunction>
	
	<cffunction name= 	"isAJAXRequest" 
				output=	"false"
				access=	"private"
				hint=	"I check to see if the request came across with ajax headers">

		<cfif structKeyExists( getHTTPRequestData().headers , "X-Requested-With" )>
			<cfreturn true />

		</cfif>

		<cfreturn false />
		
	</cffunction>
	
</cfcomponent>
