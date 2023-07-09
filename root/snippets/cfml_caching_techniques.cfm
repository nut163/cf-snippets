```cfml
<!--- Caching Techniques in CFML --->

<!--- Using the cachePut function to store data in the cache --->
<cfscript>
    cachePut(id="myData", value="This is some data", timespan=createTimespan(0,1,0,0));
</cfscript>

<!--- Using the cacheGet function to retrieve data from the cache --->
<cfscript>
    myData = cacheGet(id="myData");
</cfscript>

<!--- Using the cacheRemove function to remove data from the cache --->
<cfscript>
    cacheRemove(id="myData");
</cfscript>

<!--- Using the cachedWithin attribute to cache a query for a specific period of time --->
<cfquery name="getUsers" datasource="myDSN" cachedWithin="#createTimeSpan(0,1,0,0)#">
    SELECT * FROM users
</cfquery>

<!--- Using the cacheId attribute to cache a query with a specific ID --->
<cfquery name="getUsers" datasource="myDSN" cacheId="usersQuery">
    SELECT * FROM users
</cfquery>

<!--- Using the cacheRegion attribute to cache data in a specific region --->
<cfscript>
    cachePut(id="myData", value="This is some data", region="myRegion");
</cfscript>

<!--- Using the cacheGetMetadata function to get metadata about a cached item --->
<cfscript>
    metadata = cacheGetMetadata(id="myData");
</cfscript>
```