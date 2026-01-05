<cfoutput>
    <cfdump  var=#URL.id#>
    <cfif structKeyExists(session, "role")>
        <cfinclude  template="/includes/adminauthentication.cfm"> 
        <cfquery name="show" datasource="edata">
            select * from product
            where isdeleted = 0   
        </cfquery>
        <cfloop query="show">
        <cfquery name="deleteproductrow" datasource="edata">
            update product
            set isdeleted= true
            where productid = #URL.id#
        </cfquery>    
        </cfloop>
        <cflocation  url="/AdminProduct/adminproduct.cfm">
        <h2>You have softly deleted the product successfully</h2>
    <cfelse>
        Role not found
        <cflocation  url="/user/loginview.cfm">
    </cfif>
</cfoutput>
