<cfoutput>
<cfdump  var=#URL#>
    <cfdump  var=#form#>
        <cfif structKeyExists(session, "role")>
        
    <cfquery name = "insertrow" datasource = "edata">
        update Address 
        set houseno=#form.houseno#, streetname="#form.streetname#",block= "#form.block#", sector= "#form.sector#" ,
        area="#form.area#" ,city="#form.city#" ,province="#form.province#" ,country= "#form.country#", postalcode= "#form.postalcode#" ,iscurrent= "#form.iscurrent#"
             where addressid=#form.addressid# 
    </cfquery>
    <h1>Adress is Updated successfully </h1>
    <cfif session.role eq "admin">
    <cflocation  url="/Admin/admin.cfm">

    <cfelseif session.role eq"user">
    <cflocation  url="/Customer/userportal.cfm">
    </cfif>
    <cfelse>
    <cflocation  url="loginview.cfm">
    Session Not Found
</cfif>
</cfoutput>

<!--- Caution 07: update query is affecting all the records in the database, replacing its customer id with the current one updating all the records recordingly. --->
        