<!--- Caution:
when this page is directly rehitted form value doesnot appear and error is show on yellow page(form not found)
use URL Param(or apply any possibel) to fix it --->
<cfoutput>
<!--- <cfdump  var=#form#> --->
    <cfif structKeyExists(session, "role")>
    <cfinclude  template="/includes/adminauthentication.cfm">
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
<!--- <cfdump  var="#Path#"> --->
        <cffile 
            action="uploadAll"
            allowedextensions=".png,.gif,.cfm,.jfif,.webp" 
            destination=#Path#
            fileField="fileData"
            nameConflict="MakeUnique"
            result = "results" />
         <cfdump  var="#results#">
         application is also behaving as a same code file scope variable or perhapes it need some configurations
         <cfset Application.result = "#results#">
         <cfdump var="#Application.result#">
        <cfdump  var="#results.1#">
        <cfdump  var="#results.1.serverfile#"> 
            <h1>Variables01</h1>
        <cfset media = "/Media/" & createDirectory & "/" & results.1.serverfile>
        <cfset media2= "/Media/" & createDirectory & "/" & results.2.serverfile>
        <cfset media3= "/Media/" & createDirectory & "/" & results.3.serverfile>
        <cfset media4= "/Media/" & createDirectory & "/" & results.4.serverfile>
        <cfset media5= "/Media/" & createDirectory & "/" & results.5.serverfile>
        <h1>Variables02</h1>
        <!--- <cfdump var="#results.1.clientfilename#">
        <cfdump var="#results.2.clientfilename#">
        <cfdump var="#results.3.clientfilename#">
        <cfdump var="#results.4.clientfilename#">
        <cfdump var="#results.5.clientfilename#"> --->
        <!--- <cfset results.1.clientfilename= 1>
        <cfset results.2.clientfilename= 2>
        <cfset results.3.clientfilename= 3>
        <cfset results.4.clientfilename= 4>
        <cfset results.5.clientfilename= 5> --->
            <cfquery name = "insertrow" datasource = "edata">
                insert into Product(name ,description , media, media2, media3, media4, media5 ,category,price, cost ,quantity ,mfgdate,expdate,unitid, collection )
                Values("#form.name#", "#form.description#", "#media#" ,"#media2#" ,"#media3#" ,"#media4#" ,"#media5#" , "#form.category#","#form.price#", "#form.cost#","#form.quantity#", "#form.mfgdate#", "#form.expdate#", "#form.unitid#", "#form.collection#")
            </cfquery>
            <cfquery name="showdata" datasource="edata">
            select * from product
            where productid = (select MAX(productid)from product)
            </cfquery>
            <cfloop query="showdata">
            #productid#
            <cfset FolderPath = expandPath("D:\wheels_proj\CoreProjects\Authentication\Ecommerce\EcommerceStore\Media\#productid#")>
        <!--- Check if the directory already exists before creating it --->
        <cfif NOT DirectoryExists(FolderPath)>
            <cfdirectory
                action="create"
                directory="#FolderPath#"
                mode="777"
            />
        <cfset Src =  Path & "\" & results.1.serverfile > 
        <cfset Src2 =  Path & "\" & results.2.serverfile > 
        <cfset Src3 =  Path & "\" & results.3.serverfile > 
        <cfset Src4 =  Path & "\" & results.4.serverfile > 
        <cfset Src5 =  Path & "\" & results.5.serverfile >

        <cfset ext =  results.1.serverfileext > 
        <cfset ext2 =  results.2.serverfileext > 
        <cfset ext3 =  results.3.serverfileext > 
        <cfset ext4 =  results.4.serverfileext > 
        <cfset ext5 =  results.5.serverfileext > 
        <cfset filename = FolderPath & "\" & "1" & "."& ext > 
        <cfset filename2 = FolderPath & "\" & "2" & "."& ext2> 
        <cfset filename3 = FolderPath & "\" & "3" & "."& ext3> 
        <cfset filename4 = FolderPath & "\" & "4" & "."& ext4> 
        <cfset filename5 = FolderPath & "\" & "5" & "."& ext5> 
        Src
        <cfdump var="#Src#">
        Folder Path
        <cfdump var="#FolderPath#">
        Path
        <cfdump var="#Path#">
        filenames
        <cfdump var="#filename#">
        <cfdump var="#filename2#">
        <cfdump var="#filename3#">
        <cfdump var="#filename4#">
        <cfdump var="#filename5#">
            <cffile
                action = "rename"  
                source =#Src#  
                destination = #filename# > 
            <cffile
                action = "rename"  
                source =#Src2#  
                destination = #filename2# > 
            <cffile
                action = "rename"  
                source =#Src3#  
                destination = #filename3# > 
            <cffile
                action = "rename"  
                source =#Src4#  
                destination = #filename4# > 
            <cffile
                action = "rename"  
                source =#Src5#  
                destination = #filename5# > 
                <!--- attributes = "file attributes list"  
                mode = "mode" --->
        <cfoutput>Directory created:Message02 #FolderPath#</cfoutput>
    <cfelse>
        <cfoutput>Directory already exists:Message02 #FolderPath#</cfoutput>
    </cfif>
                <h1>Working till here?</h1>
                <img src="#filename#" class="w-50" alt="image not found">
                </cfloop>
                    <cfabort>
            <cflocation  url="/AdminProduct/adminproduct.cfm">
        <cfelse>
            <h1> Role not found</h1>
            <cflocation  url="/user/loginview.cfm">
        </cfif>
    </cfoutput>