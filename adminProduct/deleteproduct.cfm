<cfoutput>
<cfif structKeyExists(session, "role")>
       <cfinclude  template="adminauthentication.cfm">       
              <h3>Soft Delete Product Row</h3>
              <p>Delete single product from the table</p>
                     <a href="/Admin/sdproduct.cfm" method="post">
                            <label> Type the Product id</label>
                            <input type="int" name="pid">
                            <button >Soft Delete this row</button>
                     </a>
<cfelse>
       Role not found
              <cflocation  url="loginview.cfm"> </cfif>
</cfoutput>
