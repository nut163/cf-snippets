<!--- Control Structures in CFML --->

<!--- IF Statement --->
<cfif condition>
    <!--- Code to execute if condition is true --->
</cfif>

<!--- IF-ELSE Statement --->
<cfif condition>
    <!--- Code to execute if condition is true --->
<cfelse>
    <!--- Code to execute if condition is false --->
</cfif>

<!--- IF-ELSEIF-ELSE Statement --->
<cfif condition1>
    <!--- Code to execute if condition1 is true --->
<cfelseif condition2>
    <!--- Code to execute if condition1 is false and condition2 is true --->
<cfelse>
    <!--- Code to execute if both conditions are false --->
</cfif>

<!--- SWITCH Statement --->
<cfswitch expression>
    <cfcase value1>
        <!--- Code to execute if expression equals value1 --->
    </cfcase>
    <cfcase value2>
        <!--- Code to execute if expression equals value2 --->
    </cfcase>
    <cfdefaultcase>
        <!--- Code to execute if expression doesn't match any case value --->
    </cfdefaultcase>
</cfswitch>

<!--- TRY-CATCH-FINALLY Statement --->
<cftry>
    <!--- Code that might throw an exception --->
    <cfcatch>
        <!--- Code to execute if an exception is thrown --->
    </cfcatch>
    <cffinally>
        <!--- Code to execute whether an exception is thrown or not --->
    </cffinally>
</cftry>