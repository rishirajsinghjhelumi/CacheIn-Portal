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
        <li class="active"><a href="">Cache-in Home</a></li>
        <li><a href="scoreboard">Scoreboard</a></li>
      </ul>
    </div>
  </div> 
  <div class="container">
    <div class="row">
      <div class="span4">
        <div id="images">
        </div>
      </div>
      <div class="span7 offset1">
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
    <hr>
    <div class="comments-container">
      <h3>Comments</h3>
      <form id="form-comment" action="/addComment" method="POST"  class="form-inline" role="form">
      Comment :  <input type="text" name="comment">
      <button type="submit" class="btn btn-default">Comment</button>
      </form>
    
      <div id="comments">
      </div>
    </div>
  </div>
  <script src="static/js/jquery-1.10.2.min.js"></script>
  <script src="static/js/bootstrap.min.js"></script>
  <script src="static/js/bootstrap-dialog.js"></script>
  <script src="static/js/d3.v3.min.js"></script>
  <script src="static/js/all.js"></script>
  <script src="static/js/timer.js"></script>
</body>
</html>
