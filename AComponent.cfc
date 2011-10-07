<cfcomponent    name=		"AComponent"
			output=	"false">

	<cffunction	name=			"anAnswer"
			returnType=		"string"
			returnFormat=	"plain"
			access=		"remote">
		<cfreturn "{ ""data"": 42 }" />

	</cffunction>

</cfcomponent>