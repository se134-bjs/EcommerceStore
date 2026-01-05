Coming Soon
<!--- <cfoutput>
    <cfif structKeyExists(session, "role")>
<cfdump  var="#url.id#">
    <cfif session.role eq "admin" || session.role eq"user">
    <!---Caution 05 This codnition is not working for non sessional pages --->
    
    <cfquery name="updatebank" datasource="edata">
        select * from bank 
        where bankid = #URL.id#  
    </cfquery>
    <table border="2">
        <form name="formis" method="post" action="ubank.cfm?id=#URL.id#">
            <tr><th colspan="7">Update Bank Details</th></tr>
            <tr>
                <th><label>Bank ID</label> </th>
                <th><label>Customer ID</label> </th>
                <th><label>Bank Name</label></th>
                <th><label>Branch Name </label></th>
                <th><label>Account Title </label></th>
                <th><label>IBAN Number</label></th>
                <th ><label>Action</label></th>
            </tr>
            <cfloop query="updatebank">
            Complete values are reaching till this point but it is showing only first words
            #bankid#<br>#customerid#<br>#bankname#<br>#branch#<br>#accounttitle#<br>#ibannumber#
            <tr>
                <td><input type="string" name="bankid" value="#bankid#"> </td>
                <td><input type="string" name="customerid" value="#customerid#"> </td>
                <td><input type="string" name="bankname" value=#bankname#></td>
                <td><input type="string" name="branch" value=#branch#></td>
                <td><input type="string" name="accounttitle" value=#accounttitle#></td>
                <td><input type="string" name="ibannumber" value=#ibannumber#></td>
                <td><a href="/Bank/ubank.cfm?id=#bankid#" ><button>Update</button></a></td>
            </tr>
            </cfloop>
        </form>
    </table>
    <cfelseif session.role neq "admin" || session.role neq "user">  
    <cflocation  url="/User/loginview.cfm">
    </cfif>   
    <cfelse>
    Role not found
    <cflocation  url="/User/loginview.cfm"> </cfif>    
</cfoutput>
 --->