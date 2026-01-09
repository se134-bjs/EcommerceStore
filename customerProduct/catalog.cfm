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
    <div class="container">
    <!--- <cfset media = Authentication\Media\##> --->
        <cfloop query="show">
        <!--- <h1>The media variable is containing</h1>
        <cfdump  var="#media#">
        <h1>The ProductName variable is containing</h1>
        <cfdump  var="#name#"> --->
            <a class="link-dark link-underline-opacity-100-hover"  href="product.cfm?id=#productid#" > 
                <div class="row " display="flex">
                    <!--- <div class="row display:grid"> --->
                        <div class="col-sm-4">
                            <!--- <button> --->
                                <div class="row-sm-4">Product Name: #name#</div>
                                <div class="row-sm-4"> <div class="fixed-size-container"><img src="#Media#" class="w-50" alt="image not found"></div></div>
                                <div class="row-sm-4">Price: #price#</div>
                                <div class="row-sm-4">Available : #quantity# Items</div>
                            <!--- </button> --->    
                                <!--- <cfinclude  template="/Rating/ratingview.cfm"> --->  
                                <hr>      
                        </div>
                        <div class="col-sm-4">
                            <!--- <button> --->
                                <div class="row-sm-4">Product Name: #name#</div>
                                <div class="row-sm-4">  <div class="fixed-size-container"><img src="#Media#" class="w-50" alt="image not found"></div></div>
                                <div class="row-sm-4">Price: #price#</div>
                                <div class="row-sm-4">Available : #quantity# Items</div>
                            <!--- </button> --->    
                                <!--- <cfinclude  template="/Rating/ratingview.cfm"> ---> 
                                <hr>       
                        </div>
                        <div class="col-sm-4">
                            <!--- <button> --->
                                <div class="row-sm-4">Product Name: #name#</div>
                                <div class="row-sm-4"> <div class="fixed-size-container"><img src="#Media#" class="w-50" alt="image not found"></div></div>
                                <div class="row-sm-4">Price: #price#</div>
                                <div class="row-sm-4">Available : #quantity# Items</div>
                            <!--- </button> --->    
                                <!--- <cfinclude  template="/Rating/ratingview.cfm"> --->        
                                <hr>
                        </div>
                    <!--- </div> --->
                </div>
            </a>
        </cfloop>
    </div>
<!---              <cfset Application.result = "#results#">
 --->
        <cfdump var="#Application.result#">
        <cfdump var="#results.1.clientfilename#">
        <cfdump var="#results.2.clientfilename#">
        <cfdump var="#results.3.clientfilename#">
        <cfdump var="#results.4.clientfilename#">
        <cfdump var="#results.5.clientfilename#"> 
</cfoutput>
