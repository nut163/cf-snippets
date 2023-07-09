<!--- Form Handling in CFML --->

<!--- HTML Form --->
<form action="process_form.cfm" method="post">
    <label for="fname">First name:</label><br>
    <input type="text" id="fname" name="fname"><br>
    <label for="lname">Last name:</label><br>
    <input type="text" id="lname" name="lname"><br>
    <input type="submit" value="Submit">
</form>

<!--- CFML Script to Process Form --->
<cfif IsDefined("form.fname") AND IsDefined("form.lname")>
    <cfset firstName = form.fname>
    <cfset lastName = form.lname>
    <cfoutput>
        Hello, #firstName# #lastName#!
    </cfoutput>
<cfelse>
    <cfoutput>
        Please fill out the form.
    </cfoutput>
</cfif>