<cfoutput>
<cfinclude  template="/includes/adminauthentication.cfm">
<!--- <cfdump  var="value"> --->
<!--- u 
<cfif structKeyExists(session, "role")>
    <cfif session.role eq "admin">
        <cfquery name="userdetails" datasource="edata">
            select*from signup
            where id = #session.id#
        </cfquery> --->
<cfinclude  template="/Bootstrap/adminsidebar.cfm">

        <!--- <table border="2">  
            <cfloop query="#userdetails#">
                <tr><th colspan="8"> Welcom Mr. #name# </th></tr>
                <tr><th colspan="8">Your Role is: (#session.role#) and Customer ID:#id#</th></tr>
                <tr>
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
                <!--- <td>#history#</td> --->                
                <td>##</td>
                </tr>
             </cfloop>
                     <cfinclude  template="/Address\viewaddress.cfm"></h3>

        </table> 
                <a href="/Address/insertaddress.cfm" ><button>Add Address</button></a>
        <a href="/Product\showproduct.cfm" ><button> Products here</button></a>
        <a href="show.cfm"><Button>Users</Button></a>
        <cfinclude  template="/Bank\viewbank.cfm">
        <cfelseif session.role neq "admin"> 
        <cflocation  url="loginview.cfm"> 
        <cfelse>
        <cflocation  url="loginview.cfm">--->
    <!--- </cfif>
    <cfelse><h1>Role not found </h1>
    <cflocation  url="loginview.cfm"></cfif> --->
</cfoutput>
