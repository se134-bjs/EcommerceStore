<cfif structKeyExists(session, "role")>
    <cfinclude  template="/Bootstrap/cdn.cfm">
        <div class="sidebar">
            <nav class="nav flex-column">
                <a class="nav-link" href="/AdminProduct/adminproduct.cfm">
                    <span class="icon">
                        <i class="bi bi-box-seam"></i>
                    </span>
                    <span class="description">Products</span>
                </a>
                <a class="nav-link" href="/Admin/users.cfm">
                    <span class="icon">
                        <i class="bi bi-box-seam"></i>
                    </span>
                    <span class="description">Users</span>
                </a>
                <a class="nav-link" href="/view.cfm" target="_blank">
                    <span class="icon">
                        <i class="bi bi-box-seam"></i>
                    </span>
                    <span class="description">View Store</span>
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