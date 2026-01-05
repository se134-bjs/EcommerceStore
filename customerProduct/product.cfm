<cfinclude  template="/Bootstrap/cdn.cfm">
<cfoutput> 
        <cfquery name="show" datasource="edata">
            select * from product
            where productid = #url.id#   
        </cfquery>
        <cfinclude  template="/Bootstrap/customernavbar.cfm">
        <div class="row display:flex">
        <cfloop query="show">
            <div class="box ">
                <div class="col-sm-4">
                    <div class="row-sm-4">Product Name: #name#</div>
                    <div class="row-sm-4"> <img src="#media#" ></div>
                    <div class="row-sm-4">Price: #price#</div>
                    <div class="row-sm-4">Available : #quantity# Items</div>
                    <div><a href="/customerProduct/buynow.cfm?id=#productid#"><button>Buy Now</button></a></div>
                    <div><a href="/customerProduct/addtocart.cfm?id=productid"><button> Add to cart</button> </a></div>
                    <cfinclude  template="/Rating/ratingview.cfm">        
                </div>
            </div>
        </cfloop>
    </div>
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