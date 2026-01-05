<cfoutput>
    <cfdump  var=#URL.id#>
    <cfif structKeyExists(session, "role")>
        <cfinclude  template="/includes/userauthentication.cfm"> 
        <cfquery name="show" datasource="edata">
            select * from address
            where isdeleted = 0   
        </cfquery>
        <cfloop query="show">
        <cfquery name="deleteproductrow" datasource="edata">
            update address
            set isdeleted= true
            where addressid = #URL.id#
        </cfquery>    
        </cfloop>
        <cflocation  url="/address/customeraddress.cfm">
        <h2>You have softly deleted the product successfully</h2>
    <cfelse>
        Role not found
        <cflocation  url="loginview.cfm">
    </cfif>
</cfoutput>
