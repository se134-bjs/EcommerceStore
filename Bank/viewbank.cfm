<!--- <cfdump  var="#viewbank#"> --->
<cfoutput> 
<cfif structKeyExists(session, "role")>
<cfquery name="viewbank" datasource = "edata">
select * from bank
where customerid = #session.id#  
</cfquery>
<cfinclude  template="/Bootstrap/usersidebar.cfm">
<!--- <cfif session.id eq id> --->
        <table border="5">
        <tr> <th colspan="8">Bank Details</th></tr>
        <tr>
            <th>Bank ID</th>
            <th>Customer ID</th>
            <th>Account Title</th>
            <th>Bank</th>
            <th>Branch</th>
            <th>IBAN</th>
            <th colspan="2">Action</th>
            </tr>
        <cfloop query="viewbank">
        <tr>
            <td> #bankid#</td>
            <td>#customerid#</td>
            <td>#accounttitle#</td>
            <td>#bankname#</td>
            <td>#branch#</td>
            <td>#ibannumber#</td>
            <td> <a href="/Bank/updatebank.cfm?id=#bankid#" method="post">
            <button >Edit </button>
        </a></td>
            <td> <a href="/Bank/deletebank.cfm?id=#bankid#" method="post">
            <button >Delete</button>
        </a></td>
        </tr>
        </cfloop>
        </table>
            <a href="/Bank/insertbank.cfm" method="post">
            <button >Insert Bank Details</button></a>
<!--- </cfif>
 --->
 <cfelse>
    Role not found
    <cflocation  url="/User/loginview.cfm"> </cfif>
    </cfoutput>
