<cfoutput>
<cfif structKeyExists(session, "role")>
    <cfinclude  template="/includes/adminauthentication.cfm">
    <cfinclude  template="/bootstrap/adminsidebar.cfm">
        <h2>Insert Product Information</h2>
            <form name="formis" method="post" action="iproduct.cfm" enctype="multipart/form-data" preservedata="true" >
                <table border="2">
                    <tr>
                        <th><label>Product Name</label></th>
                        <th><label>Product Description </label></th>
                        <th><label for="myfile">Select a file:</label> </th>
                        <th><label>Product Category</label></th>
                        <th><label>Product Price</label></th>
                        <th><label>Product Cost</label></th>
                        <th><label>Product Quantity</label></th>
                        <th><label>Product Manufacturing Date</label></th>
                        <th><label>Product Expiry Date</label></th>
                        <th><label>Product Unit ID</label></th>
                        <th><label>Product Collection</label></th>
                        <th>Action</th>
                    </tr>
                    <tr>
                        <td><input type="string" name="name"></td>
                        <td><input type="string" name="description"></td>
                        <td>    
                        <input type="file" name="fileData">
                        </td>
                        <td><input type="string" name="category"></td>
                        <td><input type="string" name="price"></td>
                        <td><input type="string" name="cost"></td>
                        <td><input type="string" name="quantity"></td>
                        <td><input type="date" name="mfgdate"></td>
                        <td><input type="date" name="expdate"></td>
                        <td><input type="string" name="unitid"></td>
                        <td><input type="string" name="collection"></td>
                        <td><button type="submit"> Submit</button></td>
                    </tr>
                </table>
                    <input
                        type = "text" required="true" name = "createDirectory" 
                    />
                    
            </form>
<cfelse>
    Role not found
        <cflocation  url="/user/loginview.cfm"> </cfif>
</cfoutput>
