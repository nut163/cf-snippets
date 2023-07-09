<!--- Query Functions in CFML --->

<cfscript>
    // Establish a connection to the database
    datasourceName = "myDataSource";
    sql = "SELECT * FROM Employees";

    // Execute the query
    queryResult = queryExecute(sql, {}, {datasource: datasourceName});

    // Output the query result
    writeDump(queryResult);
</cfscript>

<cfscript>
    // Establish a connection to the database
    datasourceName = "myDataSource";
    sql = "INSERT INTO Employees (FirstName, LastName) VALUES (:firstName, :lastName)";

    // Set the parameters
    params = {firstName: {value: "John", cfsqltype: "cf_sql_varchar"},
              lastName: {value: "Doe", cfsqltype: "cf_sql_varchar"}};

    // Execute the query
    queryResult = queryExecute(sql, params, {datasource: datasourceName});

    // Output the query result
    writeDump(queryResult);
</cfscript>

<cfscript>
    // Establish a connection to the database
    datasourceName = "myDataSource";
    sql = "UPDATE Employees SET FirstName = :firstName WHERE EmployeeID = :employeeID";

    // Set the parameters
    params = {firstName: {value: "Jane", cfsqltype: "cf_sql_varchar"},
              employeeID: {value: 1, cfsqltype: "cf_sql_integer"}};

    // Execute the query
    queryResult = queryExecute(sql, params, {datasource: datasourceName});

    // Output the query result
    writeDump(queryResult);
</cfscript>

<cfscript>
    // Establish a connection to the database
    datasourceName = "myDataSource";
    sql = "DELETE FROM Employees WHERE EmployeeID = :employeeID";

    // Set the parameters
    params = {employeeID: {value: 1, cfsqltype: "cf_sql_integer"}};

    // Execute the query
    queryResult = queryExecute(sql, params, {datasource: datasourceName});

    // Output the query result
    writeDump(queryResult);
</cfscript>