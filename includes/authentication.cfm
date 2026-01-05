<cfoutput>
   
          <!---    need to set on an appropriate place --->
    <cfif structKeyExists(form, "loginid")>
        <cfquery name = "login" datasource = "edata">
            select * from signup
            where signinid = "#form.loginid#" && password="#form.password#" <!--- && id = #session.id#  &&     <cfset session.id = "#id#"> --->
        </cfquery>
        <cfif login.recordCount lte 0>
        <!--- the above technique will count that how many times the condition was true. and if it is more than one it will let the man log-in other wise redirect to the login--->
            <cflocation  url="/user/loginview.cfm?login=false">
            <cfabort>
        <cfelse>
            <cfset session.id = login.id> 
            <cfset session.role = login.role>
        </cfif>
    <cfelse>
        <cflocation  url="/user/loginview.cfm?logidfdfnnnn=false">
        <cfabort>
    </cfif>
    <!--- <cfloop query="login">
        <cfif role eq "admin">
            <cfset session.id = id> 
            <cfset session.role = role>
            <cflocation url="/Admin/admin.cfm" addToken="no" ></cflocation> <!---  statusCode = "300|301|302|303|304|305|307" ---> 
                <h1>#session.id# </h1>
                <h1>#session.role#</h1>
        <cfelseif role eq "user">
            <cfset session.id = id>
            <cfset session.role = role>
            <cflocation  url="/Customer/userportal.cfm" addToken="no"   ></cflocation><!--- statusCode = "300|301|302|303|304|305|307" --->
                <h1>#session.id#</h1>
                <h1> #session.role#</h1>
        </cfif>
    </cfloop> --->
</cfoutput>
