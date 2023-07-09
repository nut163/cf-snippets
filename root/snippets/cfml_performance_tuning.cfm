<!--- Performance Tuning in CFML --->

<!--- Using cfsetting to enable or disable whitespace management --->
<cfsetting enablecfoutputonly="Yes" showdebugoutput="No">

<!--- Using cfquery with cachedwithin attribute to cache database query results --->
<cfquery name="getUsers" datasource="myDSN" cachedwithin="#CreateTimeSpan(0, 1, 0, 0)#">
    SELECT * FROM Users
</cfquery>

<!--- Using cfcontent to flush output to the client --->
<cfcontent type="text/html">

<!--- Using cfprocessingdirective to suppress whitespace in a block of code --->
<cfprocessingdirective suppresswhitespace="Yes">
    <!--- Your CFML code here --->
</cfprocessingdirective>

<!--- Using cfsilent to suppress all output within its body --->
<cfsilent>
    <!--- Your CFML code here --->
</cfsilent>

<!--- Using cfthread to perform asynchronous processing --->
<cfthread action="run" name="myThread">
    <!--- Your CFML code here --->
</cfthread>

<!--- Using cfobjectcache to manage object caching --->
<cfobjectcache action="clear">

<!--- Using cftrace to log execution times --->
<cftrace inline="Yes" text="Start of the request">
<!--- Your CFML code here --->
<cftrace inline="Yes" text="End of the request">

<!--- Using cfsetting to reset the settings --->
<cfsetting enablecfoutputonly="No" showdebugoutput="Yes">