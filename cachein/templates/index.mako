<!DOCTYPE html>
<html lang="en">
<head>
<style>
html, body {
  height: 100%;
}
.container {
  min-height: 80%;
  height: 80%;
}
</style>
<meta charset="utf-8">
<title>Cache In</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Le styles -->
<link href="static/css/bootstrap.css" rel="stylesheet">
<link href="static/css/bootstrap-responsive.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Electrolize' rel='stylesheet' type='text/css'>
</head>
<body style="background-color: #1A1A1A;">
<%include file="header.mako"/>

<div class="container">
<h1 style="font-family: 'Electrolize', sans-serif;">Please login to continue</h1>

<iframe height="300px" src="http://felicity.iiit.ac.in/cas/login?service=http%3A%2F%2Ffelicity.iiit.ac.in%2Fthreads%2Fcachein%2Fmain%2Fcas-login"></iframe>


</div>

<%include file="footer.mako"/>

<script src="static/js/jquery-1.10.2.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/d3.v3.min.js"></script>
</body>
</html>
