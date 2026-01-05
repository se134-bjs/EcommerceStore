<cfoutput>
    <cfinclude  template="/includes/userauthentication.cfm">
    <cfquery name="insertbank" datasource="edata">
        insert into bank(customerid, bankname, branch, accounttitle, ibannumber)
        values
        (#form.customerid#,"#form.bankname#","#form.branch#","#form.accounttitle#","#form.ibannumber#" )
    </cfquery>
    <cfquery name="insertbank" datasource="edata">
    <cflocation  url="/Bank/viewbank.cfm">
    </cfquery>
</cfoutput>
