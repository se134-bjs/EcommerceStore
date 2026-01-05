<cfinclude  template="/bootstrap/cdn.cfm">
  <!--- FIrts BS Component --->
  <cfinclude  template="/Bootstrap/customernavbar.cfm">
  <cfinclude  template="/Bootstrap/carousel.cfm">
  <!--- Second BS Component --->

<!--- It Ends Here --->
    <div class="jumbotron text-center">
    <h1>Ecommerce</h1>
    <p>We spread the happines!</p>
  </div>

  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <h3>Column 1</h3>
        <p>Lorem ipsum dolor..</p>
      </div>
      <div class="col-sm-4">
        <h3>Column 2</h3>
        <p>Lorem ipsum dolor..</p>
      </div>
      <div class="col-sm-4">
        <h3>Column 3</h3>
        <p>Lorem ipsum dolor..</p>
      </div>
    </div>
  </div>
  <cfinclude  template="/Bootstrap/footer.cfm">
<!--- </cfif> ---> 
                    <!--- <h2>DirectoryCreate Example</h2> 
                    <h3>Enter a directory to create.</h3> 
                    <cfform action = "directorycreate.cfm" method="post" preservedata="true" > 
                      <cfinput type = "text" required="true" name = "createDirectory"> 
                      <br> 
                      <cfinput type = "submit" value="submit" name = "submit"> 
                    </cfform>
                    <cfif IsDefined("FORM.createDirectory")> 
                      <cfif FORM.createDirectory is not ""> 
                        <cfset createDirectory = FORM.createDirectory> 
                          <cftry> 
                            <cfset DirectoryCreate(createDirectory)> 
                              <cfoutput>
                                <b>Directory #createDirectory# successfully created.</b>
                              </cfoutput> 
                          <cfcatch> 
                            <b>Error Message:</b><cfoutput>#cfcatch.message#</cfoutput><br/> 
                            <b>Error Detail:</b><cfoutput>#cfcatch.Detail#</cfoutput> 
                          </cfcatch> 
                          </cftry> 
                      </cfif>
                    </cfif> --->