<!--- String Functions in CFML --->

<cfscript>
    // Define a string
    myString = "Hello, World!";

    // Get the length of a string
    length = len(myString);
    writeOutput("Length of the string is: " & length & "<br>");

    // Convert a string to uppercase
    upperCaseString = ucase(myString);
    writeOutput("Uppercase string: " & upperCaseString & "<br>");

    // Convert a string to lowercase
    lowerCaseString = lcase(myString);
    writeOutput("Lowercase string: " & lowerCaseString & "<br>");

    // Find the position of a substring in a string
    position = find("World", myString);
    writeOutput("Position of 'World' in the string is: " & position & "<br>");

    // Replace a substring in a string
    replacedString = replace(myString, "World", "CFML");
    writeOutput("Replaced string: " & replacedString & "<br>");

    // Trim whitespace from a string
    trimmedString = trim("   CFML   ");
    writeOutput("Trimmed string: '" & trimmedString & "'<br>");

    // Split a string into an array
    stringArray = listToArray(myString, " ");
    writeDump(stringArray);
</cfscript>