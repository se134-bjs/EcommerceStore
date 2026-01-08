<cfoutput>
<cfif structKeyExists(session, "role")>
    <cfinclude  template="/includes/adminauthentication.cfm">
    <cfinclude  template="/bootstrap/adminsidebar.cfm">
        <h2>Insert Product Information</h2>
            <form name="forms" method="post" action="iproduct.cfm" enctype="multipart/form-data" preservedata="true" >
                <div class="form-row">
                <div class="form-group col-md-3">
                    <label for="inputEmail4">Product Name</label>
                    <input type="string" class="form-control" name="name" id="inputEmail4" placeholder="Product Name"><!---  value="#id#"> --->
                </div>
                <div class="form-group col-md-3">
                    <label for="inputEmail4">Product Description </label>
                    <input type="string" class="form-control"name="description" id="inputEmail4" placeholder="description">
                </div>
                <div class="form-group col-md-3">
                    <label for="myfile">Select a file:</label>
                    <input type="file" class="form-control" name="fileData1" id="inputPassword4" placeholder="fileData1">
                    <input type="file" class="form-control" name="fileData2" id="inputPassword4" placeholder="fileData1">
                    <input type="file" class="form-control" name="fileData3" id="inputPassword4" placeholder="fileData1">
                    <input type="file" class="form-control" name="fileData4" id="inputPassword4" placeholder="fileData1">
                    <input type="file" class="form-control" name="fileData5" id="inputPassword4" placeholder="fileData1">
                </div>
                <div class="form-group col-md-3">
                    <label for="inputEmail4">Product Category</label>
                    <select name="category" id="category" <!--- class="form-control" id="inputEmail4" --->>
                            <option value="Fashion & Apparel:">Fashion & Apparel:</option>
                            <option value="Electronics & Technology: ">Electronics & Technology: </option>
                            <option value="Home & Living:">Home & Living:</option>
                            <option value="Beauty & Personal Care:">Beauty & Personal Care:</option>
                            <option value="Food & Beverages:">Food & Beverages:</option>
                            <option value="Sports & Outdoors:">Sports & Outdoors:</option>
                        </select>
                </div>
                <div class="form-group col-md-3">
                    <label for="inputPassword4">Product Price</label>
                    <input type="string" class="form-control" name="price" id="inputPassword4" placeholder="PKR/=">
                </div>
                    <div class="form-group col-md-3">
                    <label for="inputEmail4">Product Cost</label>
                    <input type="string" class="form-control" name="cost" id="inputEmail4" placeholder="PKR/=">
                </div>
                <div class="form-group col-md-3">
                    <label for="inputPassword4">Product Quantity</label>
                    <input type="string" class="form-control" name="quantity" id="inputPassword4" placeholder="Available Stock">
                </div>
                <div class="form-group col-md-3">
                    <label for="inputPassword4">Product Manufacturing Date</label>
                    <input type="date" class="form-control" name="mfgdate" id="inputPassword4" >
                </div>
                <div class="form-group col-md-3">
                    <label for="inputPassword4">Product Expiry Date</label>
                    <input type="date" class="form-control" name="expdate" id="expdate" >
                </div>
                <div class="form-group col-md-3">
                    <label for="inputPassword4">Product Unit ID</label>
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
                </div>
                <div class="form-group col-md-3">
                    <label for="inputPassword4">Product Collection</label>
                        <select name="collection" id="collection" class="form-control" id="inputEmail4">
                            <option value="New Arrivals:">New Arrivals:</option>
                            <option value="Best Sellers: ">Best Sellers: </option>
                            <option value="Seasonal/Holiday:">Seasonal/Holiday:</option>
                            <option value="Sustainability/Eco-Friendly:">Sustainability/Eco-Friendly:</option>
                            <option value="Sale/Clearance:">Sale/Clearance:</option>
                            <option value="Bundles:">Bundles:</option>
                        </select>
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Save</button>
            <input
                    type = "text" required="true" name = "createDirectory" 
                />
            </form> 
<cfelse>
    Role not found
        <cflocation  url="/user/loginview.cfm"> </cfif>
</cfoutput>
