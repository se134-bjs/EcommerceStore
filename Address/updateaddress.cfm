<cfoutput>
<cfdump  var=#URL.id#>
        <cfquery name="showaddress" datasource="edata">
                select * from address
                where addressid = #Url.id#
        </cfquery>      
        <table border="2">
                <form name="form" method="post" action="uaddress.cfm<!--- ?id=#URL# --->">
                        <tr><th colspan="13"><h2>Update Address </h2></th></tr>
                        <tr>
                                <th><label>Address ID</label></th>
                                <th><label>Customer ID</label></th>
                                <th><label>House Number</label></th>
                                <th><label>Street Name </label></th>
                                <th><label>Block </label></th>
                                <th><label>Sector</label></th>
                                <th><label>Area </label></th>
                                <th><label>City </label></th>
                                <th><label>Province</label></th>
                                <th><label>Country</label></th>
                                <th><label>Postal Code</label></th>
                                <th><label>iscurrent </label></th>
                                <th>Action</th>
                        </tr>
                        <cfloop query="showaddress">
                        <tr>
                                <td><input type="int" name=addressid  value="#addressid#" readonly <!--- disabled="true" --->></td>
                                <td><input type="int" name=customerid  value="#customerid#" readonly <!--- disabled="true" --->></td>
                                <td><input type="int" name=houseno value=#houseno#></td>
                                <td><input type="string" name="streetname" value=#streetname#></td>
                                <td><input type="string" name="block" value= #block #></td>
                                <td><input type="string" name="sector" value=#sector #></td>
                                <td><input type="string" name="area" value=#area #></td>
                                <td><input type="string" name="city" value=#city #></td>
                                <td><input type="string" name="province" value=#province #></td>
                                <td><input type="string" name="country" value=#country #></td>
                                <td><input type="string" name="postalcode" value=#postalcode #></td>
                                <td><input type="boolean" name="iscurrent" value=#iscurrent#></td>
                                <td><button type="submit"> Submit</button></td>
                        </tr>
                        </cfloop>
                </form>                      
        </table>
</cfoutput>