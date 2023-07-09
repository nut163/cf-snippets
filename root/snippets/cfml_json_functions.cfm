<!--- JSON Functions in CFML --->

<cfscript>
    // Creating a JSON object
    myStruct = { "name":"John", "age":30, "city":"New York" };
    myJSON = serializeJSON(myStruct);
    writeOutput(myJSON);

    // Parsing a JSON object
    jsonString = '{ "name":"John", "age":30, "city":"New York" }';
    myStruct = deserializeJSON(jsonString);
    writeOutput(myStruct.name);
</cfscript>

<!--- JSON Array in CFML --->

<cfscript>
    // Creating a JSON array
    myArray = ["John", "Anna", "Peter"];
    myJSON = serializeJSON(myArray);
    writeOutput(myJSON);

    // Parsing a JSON array
    jsonArray = '["John", "Anna", "Peter"]';
    myArray = deserializeJSON(jsonArray);
    writeOutput(myArray[1]);
</cfscript>

<!--- Pretty Print JSON in CFML --->

<cfscript>
    myStruct = { "name":"John", "age":30, "city":"New York" };
    myJSON = serializeJSON(myStruct, true);
    writeOutput(myJSON);
</cfscript>