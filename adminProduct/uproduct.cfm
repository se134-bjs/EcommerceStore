<cfoutput>
    <cfif structKeyExists(session, "role")>
        <cfinclude  template="/includes/adminauthentication.cfm">
            <cffile 
                action="upload"
                destination="D:\wheels_proj\CoreProjects\Authentication\Media\"
                fileField="fileData"
                nameConflict="MakeUnique"
                result = "result"
            />
            <cfquery name = "updaterow" datasource = "edata">
                UPDATE  Product
                set name="#form.name#",description="#form.description#", media ="/Media/#result.serverfile#",category = "#form.category#",price="#form.price#", cost="#form.cost#",quantity="#form.quantity#" ,mfgdate = "#form.mfgdate#",expdate ="#form.expdate#",unitid ="#form.unitid#",collection= "#form.collection#" 
                where productid = #form.productid#
            </cfquery> 
            <cflocation  url="/AdminProduct/adminproduct.cfm">
            <h2>Product is updated</h2>
            it is being displayed
                #form.name#
                #form.description#
                #form.media#
                #form.category#
                #form.price#
                #form.cost#
                #form.quantity#
                #form.mfgdate#
                #form.expdate#
                #form.unitid#
                #form.collection#
                <h1>Product is Updated </h1>  
<cfelse>
    Role not found
        <cflocation  url="/user/loginview.cfm"> </cfif>
</cfoutput>
