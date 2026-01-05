
<cfoutput>
    <cfinclude  template="/includes/userauthentication.cfm">
    <!--- <cfinclude  template="/bootstrap/customernavbar.cfm"> --->
    <cfinclude  template="/bootstrap/usersidebar.cfm">
        <cfif structKeyExists(session, "role")>
            <cfquery name="showaddress" datasource="edata">
                select * from address
                where customerid = #session.id# && isdeleted = 0
            </cfquery>
            <table border=2>
                <tr>
                    <th colspan="14">Address List</th>
                </tr>
                <tr>
                    <th>Address ID</th>
                    <th>Customer ID</th>
                    <th>House Number</th>
                    <th>street Name</th>
                    <th>Block</th>
                    <th>Sector</th>
                    <th>Area</th>
                    <th>City</th>
                    <th>Province</th>
                    <th>Country</th>
                    <th>Postal Address</th>
                    <th>Is Current</th>
                    <th colspan="2">Action</th>
                </tr>
                <cfloop query="showaddress">
                <tr>
                    <td>#addressid#</td>
                    <td>#customerid#</td>
                    <td>#houseno#</td>
                    <td>#streetname#</td>
                    <td>#block#</td>
                    <td>#sector#</td>
                    <td>#area#</td>
                    <td>#city#</td>
                    <td>#province#</td>
                    <td>#country#</td>
                    <td>#postalcode#</td>
                    <td>#iscurrent#</td>
                    <td> <a href="/Address/updateaddress.cfm?id=#addressid#" method="post">
                        <button >Edit </button>
                    </a></td>
                    <td> <a href="/Address/deleteaddress.cfm?id=#addressid#" method="post">
                        <button >Delete</button>
                    </a></td>
                </tr>
                </cfloop>
            </table> 
            <a href="/Address/insertaddress.cfm"><button>Insert Address</button></a>
        <cfelse>
            Role not found
            <cflocation  url="/User/loginview.cfm"> 
        </cfif>
</cfoutput>