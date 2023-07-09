```cfml
<!--- Define a function to calculate the factorial of a number --->
<cffunction name="calculateFactorial" returntype="numeric">
    <cfargument name="number" type="numeric" required="yes">
    <cfif ARGUMENTS.number LTE 0>
        <cfreturn 1>
    <cfelse>
        <cfreturn ARGUMENTS.number * calculateFactorial(ARGUMENTS.number - 1)>
    </cfif>
</cffunction>

<!--- Define a function to check if a number is prime --->
<cffunction name="isPrime" returntype="boolean">
    <cfargument name="number" type="numeric" required="yes">
    <cfset var i = 0>
    <cfif ARGUMENTS.number LTE 1>
        <cfreturn false>
    <cfelse>
        <cfloop index="i" from="2" to="#ARGUMENTS.number / 2#" step="1">
            <cfif ARGUMENTS.number MOD i EQ 0>
                <cfreturn false>
            </cfif>
        </cfloop>
        <cfreturn true>
    </cfif>
</cffunction>

<!--- Define a function to reverse a string --->
<cffunction name="reverseString" returntype="string">
    <cfargument name="str" type="string" required="yes">
    <cfreturn reverse(ARGUMENTS.str)>
</cffunction>
```