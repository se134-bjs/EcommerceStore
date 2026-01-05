<cfoutput>
<cfdump  var=#form#>
<cfdump  var=#form.star#>
<cfdump  var=#form.reviews#>



<cfquery name="rating" datasource="edata">
insert into rating(star,reviews)
values("#form.star#","#form.reviews#")
</cfquery>



</cfoutput>