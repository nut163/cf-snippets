<!--- Database Operations in CFML --->

<!--- Establishing a connection --->
<cfquery name="getRecords" datasource="your_datasource">
    SELECT * FROM your_table
</cfquery>

<!--- Displaying the records --->
<cfoutput query="getRecords">
    #getRecords.columnName#
</cfoutput>

<!--- Inserting a record --->
<cfquery name="insertRecord" datasource="your_datasource">
    INSERT INTO your_table (column1, column2)
    VALUES ('value1', 'value2')
</cfquery>

<!--- Updating a record --->
<cfquery name="updateRecord" datasource="your_datasource">
    UPDATE your_table
    SET column1 = 'new_value1', column2 = 'new_value2'
    WHERE condition
</cfquery>

<!--- Deleting a record --->
<cfquery name="deleteRecord" datasource="your_datasource">
    DELETE FROM your_table
    WHERE condition
</cfquery>