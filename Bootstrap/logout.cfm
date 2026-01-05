<cfoutput>
    <cfif structKeyExists(session, "role")>

        <cfset structClear(session)>

    <cfinclude  template="/user/loginview.cfm">
    <cfelse>
    <cfinclude  template="/user/loginview.cfm">
    </cfif>
</cfoutput>