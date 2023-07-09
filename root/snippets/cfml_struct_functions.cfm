<!--- Struct Functions in CFML --->

<cfscript>
    // Creating a struct
    myStruct = structNew();
    myStruct["key1"] = "value1";
    myStruct["key2"] = "value2";

    // Checking if a struct is empty
    isEmpty = structIsEmpty(myStruct); // returns false

    // Checking if a struct contains a key
    containsKey = structKeyExists(myStruct, "key1"); // returns true

    // Getting all keys in a struct
    keys = structKeyArray(myStruct); // returns ["key1", "key2"]

    // Getting all values in a struct
    values = structValueArray(myStruct); // returns ["value1", "value2"]

    // Getting the number of elements in a struct
    count = structCount(myStruct); // returns 2

    // Deleting a key from a struct
    structDelete(myStruct, "key1");

    // Clearing a struct
    structClear(myStruct);
</cfscript>