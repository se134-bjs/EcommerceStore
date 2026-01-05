<cfif structKeyExists(session, "role")>
    <cfinclude  template="/includes/userauthentication.cfm">
    <cfinclude  template="/Bootstrap/cdn.cfm">
        <div class="sidebar">
            <nav class="nav flex-column">
                <a class="nav-link" href="/Customer/userportal.cfm">
                    <span class="icon">
                        <i class="bi bi-grid"></i>
                    </span>
                    <span class="description">Profile
                    </span>
                </a>
                <a class="nav-link" href="/Address/customeraddress.cfm">
                    <span class="icon">
                        <i class="bi bi-clipboard-check"></i>
                    </span>
                    <span class="description">Address</span>
                </a>
                <a class="nav-link" href="/Bank/viewbank.cfm">
                    <span class="icon">
                        <i class="bi bi-bell"></i>
                    </span>
                    <span class="description">Bank</span>
                </a>
                <a class="nav-link" href="/Bootstrap/logout.cfm">
                    <span class="icon">
                        <i class="bi bi-box-seam"></i>
                    </span>
                    <span class="description">Logout</span>
                </a>
            </nav>
        </div>
<cfelse>
    Role not found
    <cflocation  url="/user/loginview.cfm"> 
</cfif>