<!--- This is a CFML snippet for declaring and using variables --->

<cfscript>
    // Declare a variable
    var myVariable = "Hello, World!";
    
    // Output the variable
    writeOutput(myVariable);
</cfscript>

<!--- This is a CFML snippet for declaring and using a variable within a function --->

<cfscript>
    function sayHello() {
        var greeting = "Hello, World!";
        return greeting;
    }
    
    // Call the function and output the result
    writeOutput(sayHello());
</cfscript>

<!--- This is a CFML snippet for declaring and using a global variable --->

<cfset globalVariable = "I'm a global variable!">

<cfscript>
    // Output the global variable
    writeOutput(globalVariable);
</cfscript>