<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<cfoutput>
    <cfif structKeyExists(session, "role")>
        <cfinclude  template="/includes/adminauthentication.cfm">
        <cfinclude  template="/bootstrap/adminsidebar.cfm">
            <cfquery name="show" datasource="edata">
                select * from product
                where isdeleted = 0   
            </cfquery>
            <table border="2">
            <tr>
            <th colspan="14">Product Details</th>
            </tr>
            <tr>
                <th>Product ID</th>
                <th>Product Name</th>
                <th>Description</th>
                <th>Media</th>
                <th>Category</th>
                <th>Price</th>
                <th>Cost</th>
                <th>Quantity</th>
                <th>Manufacturing Date</th>
                <th>Expiry Date</th>
                <th>Unit ID</th>
                <th>Collection</th>
                <th colspan="2">Action</th>   
                </tr>        
            <cfloop query="show">
                <tr>
                    <td>#productid#</td>
                    <td>#name#</td>
                    <td>#description#</td>
                    <td>#media#</td>
                    <td>#category#</td>
                    <td>#price#</td>
                    <td>#cost#</td>
                    <td>#quantity#</td>
                    <td>#mfgdate#</td>
                    <td>#expdate#</td>
                    <td>#unitid#</td>
                    <td>#collection#</td>
                    <td> 
                        <a href="/adminProduct/updateproduct.cfm?id=#productid#" method="get">
                            <button>Edit</button>
                        </a>
                    </td>
                    <td>
                        <a href="/adminProduct/sdproduct.cfm?id=#productid#" method="get">
                            <button>delete</button>
                        </a>
                    </td>
                </tr>
            </cfloop>
                <a href="/adminproduct/insertproduct.cfm">
                    <button >Add Product</button>
                </a>
            </table>
    <cfelse>
        <cflocation  url="/user/loginview.cfm">
    </cfif>
</cfoutput>