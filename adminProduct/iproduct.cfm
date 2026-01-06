<cfoutput>
<cfdump  var="#output#">
<h1>Form is</h1>
<cfdump  var="#form#">
<h1>Session is</h1>
<cfdump  var="#session#">
<h1>Create Directory is</h1>
<cfdump  var="#createDirectory#">
<!--- <cfabort> --->
    <cfif structKeyExists(session, "role")>
    <cfinclude  template="/includes/adminauthentication.cfm">
            <!--- The code for create directory start from here --->
        <cfif IsDefined("FORM.createDirectory")> 
            <cfif FORM.createDirectory is not "">
            <cfset createDirectory = FORM.createDirectory> 
            <!--- directoryExists ("D:\wheels_proj\CoreProjects\Authentication\adminProduct") --->
                            <cftry> 
                    <cfset DirectoryCreate("D:\wheels_proj\CoreProjects\Authentication\Ecommerce\EcommerceStore\Media\#createDirectory#")> 
                    
                        <b>Directory #createDirectory# successfully created.</b>
                    
                    
                    <cfcatch name="something"> 
                    <h1>Chcatch Message is</h1>
                    <cfdump  var="#cfcatch.message#">
                    <h1>Form.createDirectory (#FORM.createDirectory#) is</h1>
                    <cfdump  var="#FORM.createDirectory#">
                    <h1>CF Catch() is: </h1>
                    <cfdump  var="#cfcatch#">
                                        <h1>Template Here</h1>
                    <cfdump  var="#cfcatch.TagContext#"> 
                    <!--- <cfdump  var="#cfcatch#"> --->
                        <b>Error Message:</b>#cfcatch.message#<br/> 
                        <b>Error Detail:</b>#cfcatch.Detail#
                    </cfcatch> 
                </cftry> 
            </cfif>
        </cfif>
            <!--- create directory code is till here --->
        <cffile 
            action="uploadAll"
            destination="D:\wheels_proj\CoreProjects\Authentication\Ecommerce\EcommerceStore\Media\#createDirectory#"
            fileField="fileData"
            nameConflict="skip"
            result = "result"
        />

        <!--- <cfdirectory action="create" directory="D:\wheels_proj\CoreProjects\Authentication\Media">
        <cfset fileName = toString(result.serverfile)> --->
            <cfquery name = "insertrow" datasource = "edata">
                insert into Product(name ,description , media ,category,price, cost ,quantity ,mfgdate,expdate,unitid, collection )
                Values("#form.name#", "#form.description#", "\Media\#createDirectory#", "#form.category#","#form.price#", "#form.cost#","#form.quantity#", "#form.mfgdate#", "#form.expdate#", "#form.unitid#", "#form.collection#")
            </cfquery>
<cfabort>
        <cflocation  url="/AdminProduct/adminproduct.cfm">
    <cfelse>
    Role not found
    <cflocation  url="/user/loginview.cfm"></cfif>
</cfoutput>