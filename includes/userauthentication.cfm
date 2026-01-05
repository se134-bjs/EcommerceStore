<cfoutput>
    <cfif structKeyExists(session,"role") and session.role neq "user">
        <cflocation  url="/user/loginview.cfm?user=false">
        <cfabort>
    </cfif>
</cfoutput>
