<!--- Array Creation --->
<cfset myArray = ArrayNew(1)>
<cfset myArray[1] = "Apple">
<cfset myArray[2] = "Banana">
<cfset myArray[3] = "Cherry">

<!--- Array Length --->
<cfset arrayLength = ArrayLen(myArray)>

<!--- Array Append --->
<cfset ArrayAppend(myArray, "Dragonfruit")>

<!--- Array Prepend --->
<cfset ArrayPrepend(myArray, "Avocado")>

<!--- Array Insert At --->
<cfset ArrayInsertAt(myArray, 3, "Blueberry")>

<!--- Array Delete At --->
<cfset ArrayDeleteAt(myArray, 2)>

<!--- Array Sort --->
<cfset ArraySort(myArray, "textnocase", "asc")>

<!--- Array Reverse --->
<cfset ArrayReverse(myArray)>

<!--- Array Clear --->
<cfset ArrayClear(myArray)>

<!--- Array Resize --->
<cfset ArrayResize(myArray, 10)>

<!--- Array Contains --->
<cfset contains = ArrayContains(myArray, "Cherry")>

<!--- Array Find --->
<cfset position = ArrayFind(myArray, "Cherry")>

<!--- Array to List --->
<cfset myList = ArrayToList(myArray, ",")>

<!--- List to Array --->
<cfset myNewArray = ListToArray(myList, ",")>