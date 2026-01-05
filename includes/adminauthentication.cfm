<cfoutput>
    <cfif structKeyExists(session,"role") and session.role neq "admin">
        <cflocation  url="/user/loginview.cfm?admin=false">
        <cfabort>
    </cfif>
</cfoutput>
