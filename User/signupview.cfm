<cfinclude  template="/bootstrap/cdn.cfm">
<!--- Bootstrap Component --->

<cfinclude  template="/Bootstrap/customernavbar.cfm">
<!--- Original  --->
<form action="signup.cfm" method="post">
    <table border="2">
            <th><label for="erole" >Enter your role</label> </th>
            <th>Enter your Name </label></th>
            <th><label>Enter your Age </label></th>
            <th> <label>Enter your mail </label></th>
            <th> <label>Enter your Phone Number </label></th>
            <th><label>Signup Id </label></th>
            <th><label>Password</label></th>
            <th><label>Confirm Password</label></th>
            <th><label>Action</label></th>
        <tr>
            <td><select name="role" id = "role">
                  <option value="">Choose your role</option>
                    <option value="admin">Admin</option>
                    <option value="user">User</option>
            </select><!--- <input type="string" name="role"  > --->
            </td>
            <td><input type="string" name="name"></td>
            <td><input type="string" name="age" ></td>
            <td><input type="email" name="mail" autocomplete="on"></td>
            <td><input type="bigint" name="phone"></td>
            <td><input type="string" name="signinid"></td>
            <td><input type="password" name="password"></td>
            <td><input type="password" name="repassword" disabled></td>
            <td><button type="submit"> Submit</button></td>
        </tr>
    </table> 
</form>