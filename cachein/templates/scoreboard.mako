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
.container {
  padding-top: 1em;
  color: #ddd;
}
.comments-container {
}
</style>
<body>
  <div class="navbar navbar-inverse">
    <div class="navbar-inner" style="background:black;">
      <a class="brand" style="padding:0;" href="http://felicity.iiit.ac.in/threads/"><img style="height:2.5em;" src="http://felicity.iiit.ac.in/threads/images/logo.png"></a>
      <ul class="nav">
        <li><a href="../">Cache-in Home</a></li>
        <li class="active"><a href="">Scoreboard</a></li>
      </ul>
    </div>
  </div> 
  <div class="container">
  <h1>Scoreboard</h1>
  <table class="table table-striped table-bordered table-hover">
  <tr>
    <th>Rank</th>
    <th>Name</th>
    <th>Score</th>
  </tr>
  </table>
  
  </div>
  <script src="static/js/jquery-1.10.2.min.js"></script>
  <script src="static/js/bootstrap.min.js"></script>
  <script src="static/js/bootstrap-dialog.js"></script>
  <script src="static/js/d3.v3.min.js"></script>
  <script src="static/js/scores.js"></script>
  <script src="static/js/timer.js"></script>
</body>
</html>
