<cfoutput>
    <!--- <cfdump  var=#url#>
    <cfquery name="product" datasource="edata">
        select * from product
        where productid = "#url.id#"
        </cfquery>
        <cfloop query="product">
    #description#
    <img src="# media#">
    #price#
    <button></button>
        </cfloop>
    <cfscript>

    orderprice=#price#* #quantity#;
    </cfscript> --->
    Logic Need to be set
    <p></p>
    Invoice Coming soon
</cfoutput>