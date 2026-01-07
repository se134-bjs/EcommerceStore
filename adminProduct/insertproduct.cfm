<cfoutput>
<cfif structKeyExists(session, "role")>
    <cfinclude  template="/includes/adminauthentication.cfm">
    <cfinclude  template="/bootstrap/adminsidebar.cfm">
        <h2>Insert Product Information</h2>
            <form name="forms" method="post" action="iproduct.cfm" enctype="multipart/form-data" preservedata="true" >
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
                        <input type="file" name="fileData1">
                        <input type="file" name="fileData2">
                        <input type="file" name="fileData3">
                        <input type="file" name="fileData4">
                        <input type="file" name="fileData5">
                        </td>
                        <td>
                            <select name="category" id="category" <!--- class="form-control" id="inputEmail4" --->>
                                <option value="Fashion & Apparel:">Fashion & Apparel:</option>
                                <option value="Electronics & Technology: ">Electronics & Technology: </option>
                                <option value="Home & Living:">Home & Living:</option>
                                <option value="Beauty & Personal Care:">Beauty & Personal Care:</option>
                                <option value="Food & Beverages:">Food & Beverages:</option>
                                <option value="Sports & Outdoors:">Sports & Outdoors:</option>
                            </select>
                        </td>
                        <td><input type="string" name="price"></td>
                        <td><input type="string" name="cost"></td>
                        <td><input type="string" name="quantity"></td>
                        <td><input type="date" name="mfgdate"></td>
                        <td><input type="date" name="expdate"></td>
                        <td>
                            <select name="unitid" id="unitid">
                            <option value="001">001</option>
                            <option value="002">002</option>
                            <option value="003">003</option>
                            <option value="004">004</option>
                            <option value="005">005</option>
                            <option value="006">006</option>
                            <option value="007">007</option>
                            <option value="008">008</option>
                            <option value="009">009</option>
                            <option value="010">010</option>
                            <option value="011">011</option>
                            <option value="012">012</option>
                            <option value="013">013</option>
                            <option value="014">014</option>
                            <option value="015">015</option>
                            <option value="016">016</option>
                            <option value="017">017</option>
                            <option value="018">018</option>
                            <option value="019">019</option>
                            <option value="020">020</option>
                            <option value="021">021</option>
                            <option value="022">022</option>
                            <option value="023">023</option>
                            <option value="024">024</option>
                            <option value="025">025</option>
                            <option value="026">026</option>
                            <option value="027">027</option>
                            <option value="028">028</option>
                            <option value="029">029</option>
                            <option value="030">030</option>
                            <option value="031">031</option>
                            <option value="032">032</option>
                            <option value="033">033</option>
                            <option value="034">034</option>
                            <option value="035">035</option>
                            <option value="036">036</option>
                            </select>
                        </td>
                        <td>
                            <select name="collection" id="collection" <!--- class="form-control" id="inputEmail4" --->>
                                <option value="New Arrivals:">New Arrivals:</option>
                                <option value="Best Sellers: ">Best Sellers: </option>
                                <option value="Seasonal/Holiday:">Seasonal/Holiday:</option>
                                <option value="Sustainability/Eco-Friendly:">Sustainability/Eco-Friendly:</option>
                                <option value="Sale/Clearance:">Sale/Clearance:</option>
                                <option value="Bundles:">Bundles:</option>
                            </select>
                        </td>
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
