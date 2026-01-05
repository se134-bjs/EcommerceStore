<cfoutput>
    <cfif structKeyExists(session, "role")>
        <img src="https://static.vecteezy.com/system/resources/previews/001/218/694/non_2x/under-construction-warning-sign-vector.jpg">
    <cfelse>
    <cfinclude  template="/bootstrap/customernavbar.cfm">
        Welcome Walking Customer<p></p>Add to Cart COming SOon
    </cfif>
</cfoutput>