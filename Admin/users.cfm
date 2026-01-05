
<cfoutput>
    <cfif structKeyExists(session, "role")>
    <cfinclude  template="/includes/adminauthentication.cfm">
        <!--- <cfif session.role eq "admin"> --->
        <cfinclude  template="/Bootstrap/adminsidebar.cfm">
            <cfquery name="show" datasource="edata">
                select * from Signup
                where role = "user"
            </cfquery>
            <!--- This is a chepi--->
            <table border="1">
                <tr><th colspan="8">Sign Up Details</th></tr>
                <tr>
                    <th>ID</th>
                    <th>Role</th>
                    <th>Mail</th>
                    <th>Phone Number</th>
                    <th>Sign In ID</th>
                    <th>Password</th>
                    <th colspan="2">Action</th>
                </tr>
            
                <cfloop query="show">
                <tr>
                    <td> #id#</td>
                    <td> #role#</td>
                    <td>#mail#</td>
                    <td>#phonenumber#</td>
                    <td>#signinid#</td>
                    <td>#password#</td>
                    <!--- Caution 03: Here is a glitch --->
                    <td><a href="/Admin/edituser.cfm?id=#id#" method="post">
                        <button >Edit User</button>
                    </a></td>
                    <td><a href="/Admin/deleteuser.cfm?id=#id#" method="post">
                        <button >Delete User</button>
                    </a></td>

                </tr></cfloop>
            </table>
            <!--- 
        <cfelseif session.role eq "user">
            <cflocation url="/loginview.cfm" addToken="no" >
        </cfif> --->
    <cfelse>
        Role not found
    <cflocation  url="/user/loginview.cfm">
    </cfif> 
</cfoutput>
