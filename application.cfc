<!--- Lucee.org Templates--->
<cfcomponent>
    <cfset this.sessionType = "cfml"/>
    <cfset this.sessionManagement = 'true'/>
    <cfset this.sessionStorage = 'memory'/>
    <cfset this.sessionCluster = 'false'/>
    <cfset this.sessionTimeout = createTimespan(0, 0, 5, 0)>
    <cfset this.setClientCookies = 'true'/>
</cfcomponent>
<!--- Code 02--->
<!---
<cfcomponent>
    <cfset this.sessionManagement = true>
</cfcomponent> --->