<link href="static/css/base.css" rel="stylesheet" />
<link href="http://fonts.googleapis.com/css?family=Electrolize" rel="stylesheet" type="text/css">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script type="text/javascript" src="http://felicity.iiit.ac.in/threads/js/login.js"></script>
  <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-46377629-1']);
   _gaq.push(['_setCookiePath', '/threads']);  
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

    </script>
      <div class="masthead dark">
        <span class="logo"><a href="http://felicity.iiit.ac.in/threads/"><img src="http://felicity.iiit.ac.in/threads/images/logo.png" alt="Threads Logo"></a></span>
        <span class="lgsu">
		Welcome <span id="userName"></span>, 
		<script>

			var user = null;
			var getUserInfo = function(){

				var url =  "getUserName";

				$.ajax({
					url: url,
					type: 'GET',
					async: false,
				}).done(function(data) {
					user = data['user'];
				},"json");
	
			};
			getUserInfo();
			$('#userName').text(user);

		</script>
		  <a class="invert" href="cas-logout">Logout</a>
		  <a class="invert" href="http://felicity.iiit.ac.in/threads/change_passwd">Change Password</a>
		  </span>
        <span class="links">
          <a href="http://felicity.iiit.ac.in/threads/events">Events</a>
          <a href="http://felicity.iiit.ac.in/threads/sponsors">Sponsors</a>
          <a href="http://felicity.iiit.ac.in/threads/contact">Contact Us</a>
        </span>
<div class="loginbox out">
  <iframe src="http://felicity.iiit.ac.in/cas/login?service=http://felicity.iiit.ac.in/threads/refresh.php" height="175"></iframe>
  <div><a href='http://felicity.iiit.ac.in/threads/forgot_password'>Forgot username/password?</a></div>
</div>
</div>
