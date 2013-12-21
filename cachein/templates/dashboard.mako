<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Le styles -->
<link href="static/css/bootstrap.css" rel="stylesheet">
<link href="static/css/bootstrap-responsive.css" rel="stylesheet">

<body>

<div id="question">
</div>

<div id="images">
</div>

<br/>
<br/>
<br/>

<form id="form-check-answer" action="/check" method="POST"  class="form-horizontal" role="form">
Answer: <input type="text" name="answer"><br/>
<button type="submit" class="btn btn-default">Submit</button>
</form>

<script src="static/js/jquery-1.10.2.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/bootstrap-dialog.js"></script>
<script src="static/js/d3.v3.min.js"></script>
<script src="static/js/all.js"></script>
</body>
</html>
