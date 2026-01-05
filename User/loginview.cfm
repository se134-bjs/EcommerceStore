<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<cfinclude  template="/bootstrap/cdn.cfm">
<cfinclude  template="/Bootstrap/customernavbar.cfm">
<!--- BootStrap Component --->
<!--- <form class="form-inline" action="/User/login.cfm" method="post"> --->
<form class="form-inline" action="/user/login.cfm" method="post">
  <div class="form-group">
    <label>Log In ID:</label>
    <input type="string" name="loginid" class="form-control" >
  </div>
  <div class="form-group">
    <label>Password:</label>
    <input type="password" name="password" class="form-control">
  </div>
 <!---  <div class="checkbox">
    <label><input type="checkbox"> Remember me</label>
  </div> --->
  <button type="submit" class="btn btn-default">Submit</button>
</form>