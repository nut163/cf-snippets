<!-- XML Creation -->
<cfxml variable="xmlDoc">
    <root>
        <child>Child Node Text</child>
    </root>
</cfxml>

<!-- XML Parsing -->
<cfset xmlParseObj = XmlParse(xmlDoc)>

<!-- Accessing XML Data -->
<cfoutput>#xmlParseObj.root.child.XmlText#</cfoutput>

<!-- Modifying XML Data -->
<cfset xmlParseObj.root.child.XmlText = "New Child Node Text">

<!-- Saving XML Data to File -->
<cffile action="write" file="#ExpandPath('./xmlData.xml')#" output="#ToString(xmlParseObj)#">

<!-- Reading XML Data from File -->
<cffile action="read" file="#ExpandPath('./xmlData.xml')#" variable="xmlData">
<cfset xmlDataObj = XmlParse(xmlData)>

<!-- Deleting XML Node -->
<cfset StructDelete(xmlDataObj, "root.child")>

<!-- Adding XML Node -->
<cfset xmlNewNode = XmlElemNew(xmlDataObj, "", "newChild", "New Child Node Text")>
<cfset ArrayAppend(xmlDataObj.root.XmlChildren, xmlNewNode)>