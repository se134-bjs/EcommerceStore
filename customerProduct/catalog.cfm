<cfinclude  template="/bootstrap/cdn.cfm">
<cfoutput> 
    <cfquery name="show" datasource="edata">
        select * from product
        where isdeleted = 0   
    </cfquery>
    <cfquery name="show" datasource="edata">
        select * from product
        where isdeleted = 0   
    </cfquery>
    <cfinclude  template="/Bootstrap/customernavbar.cfm">
    <!--- Grid --->
    <div class="row display:flex">
    <!--- <cfset media = Authentication\Media\##> --->
        <cfloop query="show">
        <h1>The media variable is containing</h1>
        <cfdump  var="#media#">
        <h1>The ProductName variable is containing</h1>
        <cfdump  var="#name#">
            <a class="link-dark link-underline-opacity-100-hover"  href="product.cfm?id=#productid#" > 
                <div class="box ">
                    <!--- <div class="row display:grid"> --->
                        <div class="col-sm-4">
                            <!--- <button> --->
                                <div class="row-sm-4">Product Name: #name#</div>
                                <div class="row-sm-4"> <div class="fixed-size-container"><img src="#media#&"/"&#name#" class="row-sm-4"></div></div>
                                <div class="row-sm-4">Price: #price#</div>
                                <div class="row-sm-4">Available : #quantity# Items</div>
                            <!--- </button> --->    
                                <cfinclude  template="/Rating/ratingview.cfm">        
                        </div>
                    <!--- </div> --->
                </div>
            </a>
        </cfloop>
    </div>
</cfoutput>
