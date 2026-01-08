<!--- Caution:
when this page is directly rehitted form value doesnot appear and error is show on yellow page(form not found)
use URL Param(or apply any possibel) to fix it --->
<cfoutput>
<cfdump  var=#form#>
    <cfif structKeyExists(session, "role")>
    <cfinclude  template="/includes/adminauthentication.cfm">
        <!--- <cfdump  var="#createDirectory#">  --->
        <!--- Older Code of Create Directory  --->
        <cfif IsDefined("FORM.createDirectory")> 
            <cfif FORM.createDirectory is not "">
            <cfset createDirectory = FORM.createDirectory> 
                    <cftry> 
                    <cfset DirectoryCreate("D:\wheels_proj\CoreProjects\Authentication\Ecommerce\EcommerceStore\Media\#createDirectory#")> 
                        <b>Directory #createDirectory# successfully created.</b>
                    <cfcatch name="something"> 
                        <b>Error Message:</b>#cfcatch.message#<br/> 
                        <b>Error Detail:</b>#cfcatch.Detail#
                    </cfcatch> 
                </cftry> 
            </cfif>
        </cfif>
        <!--- New Code od create Directory --->
        <!--- Define the path for the new folder --->

<cfset Path = "D:\wheels_proj\CoreProjects\Authentication\Ecommerce\EcommerceStore\Media\#createDirectory#">
<cfdump  var="#Path#">

        <cffile 
            action="uploadAll"
            allowedextensions=".png,.gif,.cfm,.jfif,.webp" 
            destination=#Path#
            fileField="fileData"
            nameConflict="MakeUnique"
            result = "results" />
            <cfset Src =  #Path# <!--- & productid ---> >
        <cffile
            action = "rename"  
            destination = #Path# 
            source =#Src#>  
            <!--- attributes = "file attributes list"  
            mode = "mode" --->
        
        <cfdump  var="#results#">
        <cfdump  var="#results.1#">
        <cfdump  var="#results.1.serverfile#">
        
        Variables
        <cfset media = "/Media/" & createDirectory & "/" & results.1.serverfile>
        <cfset media2= "/Media/" & createDirectory & "/" & results.2.serverfile>
        <cfset media3= "/Media/" & createDirectory & "/" & results.3.serverfile>
        <cfset media4= "/Media/" & createDirectory & "/" & results.4.serverfile>
        <cfset media5= "/Media/" & createDirectory & "/" & results.5.serverfile>
        <Variables>
        <cfset results.1.clientfilename= 1>
        <cfset results.2.clientfilename= 2>
        <cfset results.3.clientfilename= 3>
        <cfset results.4.clientfilename= 4>
        <cfset results.5.clientfilename= 5>
            <cfquery name = "insertrow" datasource = "edata">
                insert into Product(name ,description , media, media2, media3, media4, media5 ,category,price, cost ,quantity ,mfgdate,expdate,unitid, collection )
                Values("#form.name#", "#form.description#", "#media#" ,"#media2#" ,"#media3#" ,"#media4#" ,"#media5#" , "#form.category#","#form.price#", "#form.cost#","#form.quantity#", "#form.mfgdate#", "#form.expdate#", "#form.unitid#", "#form.collection#")
            </cfquery>
            <cfset FolderPath = expandPath("D:\wheels_proj\CoreProjects\Authentication\Ecommerce\EcommerceStore\Media\#createDirectory#")>

<!--- Check if the directory already exists before creating it --->
<cfif NOT DirectoryExists(FolderPath)>
    <cfdirectory
        action="create"
        directory="#FolderPath#"
        mode="777"
    />
    <cfoutput>Directory created: #FolderPath#</cfoutput>
<cfelse>
    <cfoutput>Directory already exists: #FolderPath#</cfoutput>
</cfif>
            <h1>Working till here?</h1>
                <cfabort>
        <cflocation  url="/AdminProduct/adminproduct.cfm">
    <cfelse>
        <h1> Role not found</h1>
        <cflocation  url="/user/loginview.cfm">
    </cfif>
</cfoutput>