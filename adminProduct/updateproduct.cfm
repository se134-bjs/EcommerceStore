<cfoutput>
        <cfif structKeyExists(session, "role")>
                <cfinclude  template="/includes/adminauthentication.cfm">
                <cfinclude  template="/bootstrap/adminsidebar.cfm">
                <cfquery name="show" datasource="edata">
                        select * from product
                        where isdeleted = 0   and productid=#Url.id#
                </cfquery> 
                        <form action="/adminProduct/uproduct.cfm?id=#Url.id#" method="post" enctype="multipart/form-data">
                                <table border="2">
                                        <tr>
                                                <th colspan="14">Update Product</th></tr>
                                                <tr>
                                                <th><label>Product id</label></th>
                                                <th><label>Product Name</label></th>
                                                <th><label>Product Description </label></th>
                                                <th><label>Product Media </label></th>
                                                <th><label>Product Category</label></th>
                                                <th><label>Product Price</label></th>
                                                <th><label>Product Cost</label></th>
                                                <th><label>Product Quantity</label></th>
                                                <th><label>Manufacturing Date</label></th>
                                                <th><label>Expiry Date</label></th>
                                                <th><label>Product Unit ID</label></th>
                                                <th><label>Product Collection</label></th>
                                                <th colspan="2"><label>Action </label></th>
                                        </tr>
                                        <cfloop query="show">
                                        <tr>
                                                <td><input type="int" name="productid" value=" #productid#"></td>
                                                <td><input type="string" name="name" value="#name#"></td>
                                                <td><input type="string" name="description" value="#description#"></td>
                                                <td><input type="file" name="fileData" value="#media#"></td>
                                                <td><input type="string" name="category" value="#category#"></td>
                                                <td><input type="string" name="price" value="#price#"></td>
                                                <td><input type="string" name="cost" value="#cost#"></td>
                                                <td><input type="string" name="quantity" value="#quantity#"></td>
                                                <td><input type="date" name="mfgdate" value="#mfgdate#"></td>
                                                <td><input type="date" name="expdate" value="#expdate#"></td>
                                                <td><input type="string" name="unitid" value="#unitid#"></td>
                                                <td><input type="string" name="collection" value="#collection#"></td>
                                                <td><button type="submit"> Update</button></td>
                                        </tr>
                                </cfloop>
                                </table>
                        </form>
        <cfelse>
        Role not found
        <cflocation  url="/user/loginview.cfm"> </cfif>   
</cfoutput>