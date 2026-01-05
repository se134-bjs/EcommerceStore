
<!---  <cfdump  var="#session#">
<cfabort>
 ---><cfoutput>
 <cfif structKeyExists(session, "role")>
    <cfif session.role eq "user"<!---  and session.id eq "id" --->>    
        <cfquery name="userdetails" datasource="edata">
        select*from signup
        where id = #session.id#
    </cfquery>
    <cfinclude template="/Bootstrap/cdn.cfm">
<!---     <cfinclude  template="/Bootstrap/customernavbar.cfm"> --->
    <cfinclude  template="/Bootstrap/usersidebar.cfm">
    <table border="2">
    <cfloop query="#userdetails#">
            <tr><th colspan="7"> Welcom Mr. #name# (#session.role#)
            </th></tr>
            <th>Customer ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Mail</th>
            <th>Contact Number</th>
            <th>Login ID</th>
            <th>Password</th>
            <th>History</th>
            
            </tr>
            <tr>
            <td>#id#</td>
            <td>#name#</td>
            <td>#age#</td>
            <td>#mail#</td>
            <td>#phonenumber#</td>
            <td>#signinid#</td>
            <td>#password#</td>
            </tr>
            </cfloop>
        </table>
    </cfif>
    <cfelse>
    Role not found
    <cflocation  url="loginview.cfm"> </cfif>
 </cfoutput>