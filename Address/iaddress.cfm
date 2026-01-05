<cfoutput>
<cfinclude  template="/includes/userauthentication.cfm">
<cfdump  var="#form#">
    <cfquery name = "insertaddress" datasource = "edata">
        insert into address( customerid, houseno,streetname,block,sector,area,city,province,country,postalcode,iscurrent )
            Values(#form.customerid#, #form.houseno#,"#form.streetname#","#form.block#","#form.sector#","#form.area#","#form.city#","#form.province#","#form.country#","#form.postalcode#", "#form.iscurrent#")
    </cfquery>
    <cflocation  url="/Address/customeraddress.cfm">
</cfoutput>

