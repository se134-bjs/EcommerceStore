
<cfinclude  template="/Bootstrap/cdn.cfm">
<cfoutput>
  <cfif structKeyExists(session, "role")>
    <cfinclude  template="/includes/userauthentication.cfm">
        <!--- <cfif session.role eq "admin"> --->
        <cfquery name="customerid" datasource="edata">
        select * from signup
        where id = #session.id#
        </cfquery>
        <cfelse>
    Role not found
    <cflocation  url="loginview.cfm"> </cfif>
        <!--- <cfinclude  template="/Bootstrap/customernavbar.cfm"> --->
        <!--- Bootstrap --->
        <form name="form" method="post" action="iaddress.cfm">
         <cfloop query="customerid">
  <div class="form-row">
    <div class="form-group col-md-3">
      <label for="inputEmail4">Customer ID</label>
      <input type="int" class="form-control" name="customerid" id="inputEmail4" placeholder="Predefined" value="#id#">
    </div>
    <div class="form-group col-md-3">
      <label for="inputEmail4">House Number</label>
      <input type="int" class="form-control"name="houseno" id="inputEmail4" placeholder="123">
    </div>
    <div class="form-group col-md-3">
      <label for="inputPassword4">Street Name</label>
      <input type="string" class="form-control" name="streetname" id="inputPassword4" placeholder="Walls Street">
    </div>
    <div class="form-group col-md-3">
      <label for="inputEmail4">Block</label>
      <input type="string" class="form-control" name="block" id="inputEmail4" placeholder="Q">
    </div>
    <div class="form-group col-md-3">
      <label for="inputPassword4">Sector</label>
      <input type="string" class="form-control" name="sector" id="inputPassword4" placeholder="G3">
    </div>
        <div class="form-group col-md-3">
      <label for="inputEmail4">Area</label>
      <input type="string" class="form-control" name="area" id="inputEmail4" placeholder="Model Town">
    </div>
    <div class="form-group col-md-3">
      <label for="inputPassword4">City</label>
      <input type="string" class="form-control" name="city" id="inputPassword4" placeholder="Lahore">
    </div>
    <div class="form-group col-md-3">
      <label for="inputEmail4">Province</label>
      <select name="province" id="province" class="form-control" id="inputEmail4">
                        <option value="Punjab">Punjab</option>
                        <option value="Sindh">Sindh</option>
                        <option value="KPK">KPK</option>
                        <option value="AJK">AJK</option>
                        <option value="Balochistan">Balochistan</option>
                        <option value="FATA">FATA</option>
                        <option value="Fedral Area">Fedral Area</option>
                        </select>
<!---       input type="string" class="form-control" id="inputEmail4" placeholder="Punjab --->
    </div>
    <div class="form-group col-md-3">
      <label for="inputPassword4">Country</label>
      <input type="country" class="form-control" name="country" id="inputPassword4" placeholder="Pakistan">
    </div>
        <div class="form-group col-md-3">
      <label for="inputEmail4">Postal Code</label>
      <input type="postalCode" class="form-control" name="postalcode" id="inputEmail4" placeholder="4569987">
    </div>
    <div class="form-group col-md-3">
      <label for="inputPassword4">isCurrent</label>
      <input type="isCurrent" class="form-control" name="iscurrent" id="inputPassword4" placeholder="Deleviry Address Same">
    </div>
  </div>
  
  
  <button type="submit" class="btn btn-primary">Save</button>
</form>
        </cfloop>
 </cfoutput>
