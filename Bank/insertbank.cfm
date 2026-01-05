<!---  <cfdump  var="#showsignup#"> --->
 <!--- Caution06: there is a problem "variable [SHOWSIGNUP] doesn't exist" --->
<!--- <cfabort> --->
<cfoutput>
        <cfinclude  template="/includes/userauthentication.cfm">
        <cfquery name ="showsignup" datasource="edata">  
        select * from signup
        <!--- where id = #session.id# --->
        </cfquery>
        
        
          <form name="insertbank" method="post" action="/Bank/ibank.cfm">
                <table border="2">
                <tr><th colspan="6"><h1>Insert Bank AccountDetails</h1></th></tr>
                <tr>
                <th> <label>Customer ID</label></th>
                <th><label>Bank Name</label> </th>
                <th><label>Branch Name </label></th>
                <th><label>Account Title </label></th>
                <th><label>IBAN Number</label></th>
                <th>Action</th>
                </tr>
                <cfloop query="showsignup">
                <tr>
                <td><input type="int" name="customerid" value="#session.id#"></td>
                <td><select name="bankname" id="bank">
                <option value="Allide Bank Limited">Allied Bank Limited</option>
                <option value="Askari Bank Limited">Askari Bank Limited</option>
                <option value="Bank AL Habib Limited">Bank AL Habib Limited</option>
                <option value="Bank Alfalah Limited">Bank Alfalah Limited</option>
                <option value="Bank of China Limited">Bank of China Limited (Pakistan Operations)</option>
                <option value="BankIslami Pakistan Limited">BankIslami Pakistan Limited</option>
                <option value="Dubai Islamic Bank Pakistan Limited">Dubai Islamic Bank Pakistan Limited</option>
                <option value="Faysal Bank Limited">Faysal Bank Limited</option>
                <option value="First Women Bank Limited">First Women Bank Limited</option>
                <option value="Habib Bank Limited">Habib Bank Limited (HBL)</option>
                <option value="Habib Metropolitan Bank Limited">Habib Metropolitan Bank Limited</option>
                <option value="JS Bank Limited">JS Bank Limited</option>
                <option value="MCB Bank Limited">MCB Bank Limited</option>
                <option value="MCB Islamic Bank">MCB Islamic Bank</option>
                <option value="Meezan Bank Limited">Meezan Bank Limited </option>
                <option value="National Bank of Pakistan">National Bank of Pakistan (NBP)</option>
                <option value="Samba Bank Limited">Samba Bank Limited</option>
                <option value="Silkbank Limited">Silkbank Limited</option>
                <option value="Sindh Bank Limited">Sindh Bank Limited</option>
                <option value="Soneri Bank Limited">Soneri Bank Limited</option>
                <option value="Standard Chartered Bank">Standard Chartered Bank (Pakistan) Ltd.</option>
                <option value="Summit Bank Limited">Summit Bank Limited</option>
                <option value="The Bank of Khyber">The Bank of Khyber (BOK)</option>
                <option value="The Bank of Punjab">The Bank of Punjab (BOP)</option>
                <option value="The Bank of Tokyo-Mitsubishi UFJ Ltd">The Bank of Tokyo-Mitsubishi UFJ Ltd</option>
                <option value="United Bank Limited">United Bank Limited (UBL)</option>
                <option value="AlBaraka Bank">AlBaraka Bank (Pakistan) Limited</option>
                                </select></td>
                <td> 
                <input type="string" name="branch">
                </td>
                <td><input type="string" name="accounttitle"></td>
                <td><input type="string" name="ibannumber"></td>
                <td> <button type="submit"> Submit</button> </td>
                </tr>
                </table>            
                </form>
                <cfbreak>
                </cfloop>
             <!---   <cfelseif session.id neq "id">
            <cflocation url="/loginview.cfm" addToken="no" > 
        </cfif> --->
</cfoutput>
