```cfml
<cftry>
    <!--- Your code goes here --->
    <cfset var1 = 10>
    <cfset var2 = 0>
    <cfset result = var1 / var2>

    <cfcatch type="any">
        <cflog file="errorLog" text="#cfcatch.message#">
        <cfoutput>
            <p>An error occurred: #cfcatch.message#</p>
        </cfoutput>
    </cfcatch>
</cftry>
```