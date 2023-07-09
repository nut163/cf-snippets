<!-- CFML Loops -->

<!-- For Loop -->
<cfloop from="1" to="10" index="i">
    <cfoutput>#i#</cfoutput>
</cfloop>

<!-- While Loop -->
<cfset counter = 0>
<cfloop condition="counter LT 10">
    <cfset counter = counter + 1>
    <cfoutput>#counter#</cfoutput>
</cfloop>

<!-- Loop Over Array -->
<cfset myArray = ["Apple", "Banana", "Cherry"]>
<cfloop array="#myArray#" index="fruit">
    <cfoutput>#fruit#</cfoutput>
</cfloop>

<!-- Loop Over Query -->
<cfquery name="getUsers" datasource="your_datasource">
    SELECT * FROM Users
</cfquery>

<cfoutput query="getUsers">
    #getUsers.firstName# #getUsers.lastName#
</cfoutput>

<!-- Loop Over Struct -->
<cfset myStruct = {name="John", age=30, city="New York"}>
<cfloop collection="#myStruct#" item="key">
    <cfoutput>#key#: #myStruct[key]#</cfoutput>
</cfloop>