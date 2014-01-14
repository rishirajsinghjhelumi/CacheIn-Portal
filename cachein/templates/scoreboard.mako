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
<style>
body
{
   background: rgb(2,22,35);
}
html, body {
  height: 100%;
  }
.container {
  padding-top: 1em;
  color: #ddd;
}
.comments-container {
}
.container {
  min-height: 80%;
}
.well {
  min-height: 10px;
  margin-top: 10px;
padding: 10px;
         margin-bottom:5px;
}
.pull-right {
  margin-right: 50px;
}

</style>
<body>
<%include file="header.mako"/>
  <div class="container">
  <div class="row">
  <div class="span12">
  <%include file="navbar.mako"/>
  </div>
  </div>
  <h1>Scoreboard</h1>
  <table class="table table-striped table-bordered table-hover">
  <tr>
    <th>Rank</th>
    <th>Name</th>
    <th>Current Level</th>
    <th>Score</th>
    <th>Last Submit Time</th>
  </tr>
  </table>
  
  <div class="pager">
  <ul>
  <li class="previous" id="previous-scores"><a href="#">&larr; Previous</a></li>
    <li class="next" id="next-scores"><a href="#">Next &rarr;</a></li>
    </ul>
  </div>
 </div>
    <%include file="footer.mako"/>
  <script src="static/js/jquery-1.10.2.min.js"></script>
  <script src="static/js/bootstrap.min.js"></script>
  <script src="static/js/bootstrap-dialog.js"></script>
  <script src="static/js/d3.v3.min.js"></script>
  <script src="static/js/scores.js"></script>
  <script src="static/js/timer.js"></script>
</body>
</html>
