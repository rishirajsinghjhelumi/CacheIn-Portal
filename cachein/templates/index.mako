<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Cache In</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Le styles -->
<link href="static/css/bootstrap.css" rel="stylesheet">
<link href="static/css/bootstrap-responsive.css" rel="stylesheet">

<body>

<form id="form-post" action="/signup" method="POST"  class="form-horizontal" role="form">
Name: <input type="text" name="name"><br/>
Email <input type="text" name="email"><br/>
Password <input type="password" name="password"><br/>
<button type="submit" class="btn btn-default">Submit</button>
</form>

<form id="form-post" action="/login" method="POST"  class="form-horizontal" role="form">
Email <input type="text" name="email"><br/>
Password <input type="password" name="password"><br/>
<button type="submit" class="btn btn-default">Submit</button>
</form>

<script src="static/js/jquery-1.10.2.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/d3.v3.min.js"></script>
</body>
</html>
