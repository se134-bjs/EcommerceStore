<!--- 
Caution: Shifted to Includes/Authentication
<cfoutput>
    <cfif structKeyExists(form, "loginid")>
        <cfquery name = "login" datasource = "edata">
            select * from signup
            where signinid = "#form.loginid#" && password="#form.password#" <!--- && id = #session.id#  &&     <cfset session.id = "#id#"> --->
        </cfquery>
    <cfelse>
        <h1>Warning: Invalid or Empty Data!</h1>
        <cfabort>
    </cfif>
        <cfloop query="login">
        <cfif role eq "admin">
            <cfset session.id = id> 
            <cfset session.role = role>
            <cflocation url="/Bootstrap/adminsidebar.cfm" addToken="no" ></cflocation> <!---  statusCode = "300|301|302|303|304|305|307" ---> 
                <h1>#session.id# </h1>
                <h1>#session.role#</h1>
        <cfelseif role eq "user">
            <cfset session.id = id>
            <cfset session.role = role>
            <cflocation  url="/Bootstrap/adminsidebar.cfm" addToken="no"   ></cflocation><!--- statusCode = "300|301|302|303|304|305|307" --->
                <h1>#session.id#</h1>
                <h1> #session.role#</h1>
        </cfif>
    </cfloop>
</cfoutput>
 --->

<cfinclude  template="/includes/authentication.cfm">
<cfif structKeyExists(session, "role") and session.role eq 'admin'>
    <cflocation  url="/Admin/admin.cfm">
    <cfabort>
<cfelse>
    <cflocation  url="/Customer/userportal.cfm">
    <cfabort>
</cfif>