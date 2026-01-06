<cfoutput>

<!--- <cfif isDefined("form")> --->

<h1>Form is</h1>
<cfdump  var="#form#">
<h1>Session is</h1>
<cfdump  var="#session#">
<h1>Create Directory is</h1>
<cfdump  var="#createDirectory#">
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
            <h1>CFFIle is here if it is dumped</h1>
        <cffile 
            action="uploadAll"
            destination="D:\wheels_proj\CoreProjects\Authentication\Ecommerce\EcommerceStore\Media\#createDirectory#"
            fileField="fileData"
            accept="image/jpeg,image/png,image/gif"
            nameConflict="makeunique"
            result = "results" 
        />
                <!--- <cfdump  var="#CFFILE#"> --->
        <h1>Finally</h1>
            <cfdump  var="#results#">
        <h1>Finally</h1>
        will it work
        <cfset myArray = "#results.array#">
            <cfdump  var="#myArray#">
            did it work
        <!--- <cfdirectory action="create" directory="D:\wheels_proj\CoreProjects\Authentication\Media">
        <cfset fileName = toString(result.serverfile)> --->
            <cfquery name = "insertrow" datasource = "edata">
                insert into Product(name ,description , media ,category,price, cost ,quantity ,mfgdate,expdate,unitid, collection )
                Values("#form.name#", "#form.description#", "\Ecommerce\EcommerceStore\Media\&""&#createDirectory#&"\"&#result.serverfile#", "#form.category#","#form.price#", "#form.cost#","#form.quantity#", "#form.mfgdate#", "#form.expdate#", "#form.unitid#", "#form.collection#")
            </cfquery>
            <h1>Working till here?</h1>
<cfabort>
        <cflocation  url="/AdminProduct/adminproduct.cfm">
    <cfelse>
    Role not found
    <cflocation  url="/user/loginview.cfm"></cfif>
    <!--- <cfelse>
    <cflocation  url="/adminproduct/insertproduct.cfm">
    </cfif> --->
</cfoutput>