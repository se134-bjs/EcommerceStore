<!--- Caution: Next page does not have the URL ID from this page yet --->
<cfoutput>
    <!--- <cfif structKeyExists(session, "role")>
                <img src="https://static.vecteezy.com/system/resources/previews/001/218/694/non_2x/under-construction-warning-sign-vector.jpg">
    <cfelse> --->
    <cfinclude  template="/bootstrap/customernavbar.cfm">
        <form action="invoice.cfm" method="post">
            <table border="2">
                <tr>
                    <th colspan="6">Order Details</th>
                </tr>
                <tr>
                    <th><label>Mail</label></th>
                    <th><label>Phone Number</label></th>
                    <th><label>Quantity</label></th>
                    <th><label>Action</label></th>
                </tr>
                <tr>
                    <td> <input type="mail" name="mail"> </td>
                    <td> <input type="number" name="phonenumber"> </td>
                    <td> <input type="number" name="quantity" min="0" placeholder="1"> </td>
                    <td> <button type="submit">Place ORder</button> </td>
                </tr>
            </table>
        </form>
    <!--- </cfif> --->
    <cfquery name="product" datasource="edata">
        select * from product
        where productid = #url.id#
    </cfquery>
    <cfloop query="product">
        #description#
        <img src="# media#">
        <div>Price:#price#</div>
    </cfloop>
</cfoutput>