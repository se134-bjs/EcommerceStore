<cfoutput>
<cfquery name="haha" datasource="edata">
select * from rating
where productid eq
</cfquery>
<cfloop query="haha">
#star##reviews# <br>
</cfloop>
</cfoutput>
