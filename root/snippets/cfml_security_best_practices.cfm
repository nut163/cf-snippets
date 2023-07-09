<!--- CFML Security Best Practices --->

<!--- Use cfqueryparam to prevent SQL Injection --->
<cfquery name="getUsers" datasource="your_datasource">
    SELECT * FROM users WHERE id = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_integer">
</cfquery>

<!--- Use encodeForHTML to prevent Cross-Site Scripting (XSS) --->
<cfoutput>
    <p>#encodeForHTML(user.firstName)#</p>
</cfoutput>

<!--- Use cftry and cfcatch to handle errors --->
<cftry>
    <!--- Your code here --->
    <cfcatch type="any">
        <!--- Log the error and show a user-friendly message --->
        <cflog text="#cfcatch.message#">
        <cfoutput>An error occurred. Please try again later.</cfoutput>
    </cfcatch>
</cftry>

<!--- Use cflocation to prevent URL manipulation --->
<cfif not isDefined("session.user")>
    <cflocation url="login.cfm" addtoken="no">
</cfif>

<!--- Use cfform to validate form data --->
<cfform name="userForm" action="submit.cfm" method="post">
    <cfinput type="text" name="firstName" required="yes" message="First name is required.">
    <cfinput type="text" name="lastName" required="yes" message="Last name is required.">
    <cfinput type="submit" value="Submit">
</cfform>