<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Rules | Cache In</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Le styles -->
<link href="static/css/bootstrap.css" rel="stylesheet">
<link href="static/css/bootstrap-responsive.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Rokkitt' rel='stylesheet' type='text/css'>
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
.item {
  margin: 5px;
  padding-top: 5px;
  font-size: 1.5em;
  font-family: 'Rokkitt', serif;
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
  <div class="nav nav-pills">
  <h1>Rules</h1>
  <br>
  <ol>
  <li class="item">Contest starts on 15th Jan, 2014 at 1800 hours IST. Contest will be of 60 hours.</li>
  <li class="item">This is an individual event.</li>
  <li class="item">Answers to all the problems will necessarily be alphanumeric strings. The answer will be a string consisting of lower-case letters and numbers only. Spaces, underscores or any other special symbols are not allowed; unless specified otherwise.</li>
  <li class="item">During the contest, you will be required to solve a series of questions which will be of the form of an online treasure hunt. Each problem has equal weightage. Solving a problem will take you to the next level.</li>
  <li class="item">Scoring will be done by the level achieved. Though there is no time penalty, tie-breaking will be done by time taken to solve the last problem.</li>
  <li class="item">For any doubts/queries you can post comments, which will be moderated.</li>
  <li class="item">Hints (if any) for a particular question will be released through comments by Admin.</li>
  <li class="item">If you are facing any issues, you can contact us at cachein@felicity.iiit.ac.in.</li>
  </ol>
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
