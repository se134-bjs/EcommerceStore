<cfoutput>
<cfdump  var="#url.id#">
<cfdump  var="#form.bankname#">
        <cfquery name="UpdateBank" datasource="edata">
            update bank 
                set bankname= "#form.bankname#", branch="#form.branch#", accounttitle="#form.accounttitle#", ibannumber="#form.ibannumber#"
                    where bankid =  <!--- <cfqueryparam value="#URL.id#" > --->  #URL.id# 
        </cfquery>
        updated
        <h1>Bank is Updated successfully </h1>
    <cfif session.role eq "admin">
    <cflocation  url="/Admin/admin.cfm">

    <cfelseif session.role eq"user">
    <cflocation  url="/Customer/userportal.cfm">
    </cfif>
</cfoutput>
