<cfparam name= "url.a" default= "0" />
<cfparam name= "url.b" default= "0" />

<cfset request.AJAXResponse= "{ ""data"": #( a + b ) / pi()# }" />
