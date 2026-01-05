<cfoutput>
<!--- <cfquery>
select * from signup
</cfquery>
<cfloop query="show" datasource = "edata">
<!--- Caution 01: What if the same signinid and password is registered already--->
 --->
  <cfquery name = "insert" datasource = "edata" >
    insert into signup(role,name,age, mail,phonenumber ,signinid,password<!---,repassword--->)
      <!--- this form is basiclly just and only form dont confuse it with any file name--->
      Values("#form.role#", "#form.name#", "#form.age#", "#form.mail#", "#form.phone#","#form.signinid#", "#form.password#"<!---,"#form.repassword#" --->)
      <!---  check ("#form.password#" == "#form.repassword#"); --->
<!---       where #form.signinid# != #id# --->
  </cfquery>
  <!--- </cfloop> --->
  <cfinclude  template="loginview.cfm">
</cfoutput>