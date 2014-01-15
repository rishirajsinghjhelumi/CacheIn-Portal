<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Dashboard | Cache In</title>
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
.well {
  min-height: 10px;
  margin-top: 10px;
  padding: 10px;
  margin-bottom:5px;
}
.pull-right {
  margin-right: 50px;
}
.unstyled {
  padding: 10px;
}
</style>
<body>

  <%include file="header.mako"/>
<!--  <div class="navbar navbar-inverse">
    <div class="navbar-inner" style="background:black;">
      <a class="brand" style="padding:0;" href="http://felicity.iiit.ac.in/threads/"><img style="height:2.5em;" src="http://felicity.iiit.ac.in/threads/images/logo.png"></a>
      <ul class="nav">
        <li class="active"><a href="">Cache-in Home</a></li>
        <li><a href="scoreboard">Scoreboard</a></li>
      </ul>
    </div>
  </div> -->
  <div class="container">
    <div class="row">
      <div class="span12">
  <%include file="navbar.mako"/>
      </div>
      </div>
      <div class="nav nav-pills">
    <div class="row">
      <div class="span6">
        <div id="images">
        </div>
      </div>
      <div class="span4 offset1">
        <div class="qa">
          <div id="question">
          </div>
          <form id="form-check-answer" action="/check" method="POST"  class="form-inline" role="form">
            <div class="control-group">
            <label for="answer">Answer :</label>
            <div class="controls">
            <input type="text" name="answer" id="answer">
            <button type="submit" class="btn btn-default">Submit</button>
            <span class="help-inline"></span>
            </div>
            </div>
          </form>
        </div>
      </div>
    </div>
    </div>
    <hr>
    <div class="comments-container nav nav-pills">
      <h3>Comments</h3>
      <form id="form-comment" action="/addComment" method="POST"  class="form-inline" role="form">
      <div class="span1"></div>
      <textarea name="comment" rows="3" class="span8"></textarea>
      <button type="submit" class="btn btn-default">Comment</button>
      </form>
    
      <div id="comments">
      </div>
    </div>
  </div>
  <%include file="footer.mako"/>
  <script src="static/js/jquery-1.10.2.min.js"></script>
  <script src="static/js/bootstrap.min.js"></script>
  <script src="static/js/bootstrap-dialog.js"></script>
  <script src="static/js/jquery.timeago.js"></script>
  <script src="static/js/timer.js"></script>
  <script src="static/js/all.js"></script>
</body>
</html>
