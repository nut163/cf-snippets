```cfml
<cfcomponent rest="true">

    <cffunction name="get" access="remote" returnType="string" httpMethod="GET">
        <cfset var result = "Hello, this is a GET request">
        <cfreturn result>
    </cffunction>

    <cffunction name="post" access="remote" returnType="string" httpMethod="POST">
        <cfset var result = "Hello, this is a POST request">
        <cfreturn result>
    </cffunction>

    <cffunction name="put" access="remote" returnType="string" httpMethod="PUT">
        <cfset var result = "Hello, this is a PUT request">
        <cfreturn result>
    </cffunction>

    <cffunction name="delete" access="remote" returnType="string" httpMethod="DELETE">
        <cfset var result = "Hello, this is a DELETE request">
        <cfreturn result>
    </cffunction>

</cfcomponent>
```