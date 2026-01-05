<cfinclude  template="/Bootstrap/cdn.cfm">
<cfoutput> 
        <cfquery name="show" datasource="edata">
            select * from product
            where productid = #url.id#   
        </cfquery>
        <cfinclude  template="/Bootstrap/customernavbar.cfm">

        <!--- Original --->
        <div class="row display:flex">
        <cfloop query="show">
            <a class="link-dark link-underline-opacity-100-hover"  href="product.cfm?id=#productid#" > 
                <div class="box ">
                    <!--- <div class="row display:grid"> --->
                        <div class="col-sm-4">
                            <!--- <button> --->
                                <div class="row-sm-4">Product Name: #name#</div>
                                <div class="row-sm-4"> <img src="#media#" class="row-sm-4"></div>
                                <div class="row-sm-4">Price: #price#</div>
                                <div class="row-sm-4">Available : #quantity# Items</div>
                                <div><a href="/Product/buynow.cfm?id=#productid#"><button>Buy Now</button></a></div>
                                <div><a href="/Product/addtocart.cfm?id=productid"><button> Add to cart</button> </a></div>
                            <!--- </button> --->    
                                <cfinclude  template="/Rating/ratingview.cfm">        
                        </div>
                    <!--- </div> --->
                </div>
            </a>
        </cfloop>
    </div>
        <!--- Original --->
        <!--- <table border="2">
            <tr>
        <th colspan="14">Product Details</th>
        </tr>
        <tr>
            <th>Product Name</th>
            <th>Description</th>
            <th>Media</th>
            <th>Category</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Manufacturing Date</th>
            <th>Expiry Date</th>
            <th>Collection</th>
            <th colspan="2">Action</th>   
            </tr>
        <cfloop query="show">
            <tr>
                <td>#name#</td>
                <td>#description#</td>
                <td> <img src="#media#"</td>
                <td>#category#</td>
                <td>#price#</td>                
                <td>#quantity#</td>
                <td>#mfgdate#</td>
                <td>#expdate#</td>
                <td>#collection#</td>
                <td><a href="/Product/buynow.cfm?id=#productid#"><button>Buy Now</button></a></td>
                <td><a href="/Product/addtocart.cfm?id=productid"><button> Add to cart</button> </a></td>
            </tr>
        </cfloop>
        <cfoutput>

</cfoutput>
        </table> --->

<cfquery name="rating" datasource="edata">
<!--- Select Top condition --->
select *
from rating
limit 1
</cfquery>
<cfloop query="rating">
#star#
show the avarage of stars
#reviews# <br>
</cfloop>
</cfoutput>