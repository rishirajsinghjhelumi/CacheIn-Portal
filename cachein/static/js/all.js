var cacheIn = new Object();
cacheIn.baseUrl = "http://felicity.iiit.ac.in/threads/cachein/main/";
cacheIn.baseUrl = "";

var CacheIn = function(){

	this.question = null;
	this.user = null;
	this.scores = null;
	this.comments = null;

	this.init = function(){

		var self = this;

		self.getUserInfo();
		self.getQuestion();
		self.getComments();

		// Question DIV
		var questionDivId = "#question";
		$(questionDivId).empty();
		//$('body').append('<h1 id="question"></h1>');

		$(questionDivId).append('<h1>Q. ' + self.question['question'] + '</h1>');

		// Images DIV
		var imagesDivId = "#images";
		$(imagesDivId).empty();
		//$('body').append('<div id="images"></div>');

		var attachments = self.question.attachments;
		for(var i=0;i<attachments.length;i++){
			self.addImage(attachments[i]['attachment']);
		}

		//Comments DIV
		var commentsDivId = "#comments";
		$(commentsDivId).empty();
		//$('body').append('<div id="comments something"></div>');

		$(commentsDivId).append('<ul class="unstyled" id="comments-list">');

		for(var i=0;i<self.comments.length;i++){
			self.showComment(self.comments[i]);
		}

		$(commentsDivId).append("</ul>");

	};

	this.getUserInfo = function(){

		var self = this;
		var url = cacheIn.baseUrl + "user";

		$.ajax({
			url: url,
			type: 'GET',
			async: false,
		}).done(function(data) {
			self.user = data;
		},"json");

	};

	this.getQuestion = function(){

		var self = this;
		var url = cacheIn.baseUrl + "question";

		$.ajax({
			url: url,
			type: 'GET',
			async: false,
		}).done(function(data) {
			self.question = data;
		},"json");

	};

	this.getComments = function(){

		var self = this;
		var url = cacheIn.baseUrl + "comment";

		$.ajax({
			url: url,
			type: 'GET',
			async: false,
		}).done(function(data) {
			self.comments = data['comments'];
		},"json");

	};

	this.addComment = function(){

		var self = this;
		var url = cacheIn.baseUrl + "addComment";

		var commentFormId = "#form-comment";
		var comment = $(commentFormId).find('textarea[name="comment"]').val();

		$.ajax({
			url: url,
			type: 'POST',
			data:  {comment : comment},
			async: false,
		}).done(function(data) {
			self.status = data['status'];
		},"json");

		return self.status;

	};

	this.checkAnswer = function(){

		var self = this;
		var url = cacheIn.baseUrl + "check";

		var answerFormId = "#form-check-answer";
		var answer = $(answerFormId).find('input[name="answer"]').val();

		$.ajax({
			url: url,
			type: 'POST',
			data:  {answer : answer},
			async: false,
		}).done(function(data) {
			self.status = data['status'];
		},"json");

		return self.status;

	};

	this.getScores = function(offset){

		var self = this;
		var url = cacheIn.baseUrl + "scores/" + offset;

		$.ajax({
			url: url,
			type: 'GET',
			async: false,
		}).done(function(data) {
			self.scores = data['scores'];
		},"json");

	};

	this.addImage = function(image){

		var imageURL = cacheIn.baseUrl + "attachment/" + image;
		var divId = "#images";

		var imageHTML = new Image();
		imageHTML.src = imageURL;
		imageHTML.alt = "Not Found";

		$(divId).append(imageHTML);

	};

	this.showComment = function(comment){

		var commentDivId = "#comments-list";

		var commentHTML = "<li class='unstyled'>";
		commentHTML += comment['user_name'] + " : <span style='color: #888888;'>" + comment['comment'] + "</span>";
		commentHTML += "</li>";

		$(commentDivId).append(commentHTML);

	};

};


$(document).ready(function() {
	cacheIn.service = new CacheIn();
	cacheIn.service.init();

	cacheIn.service.getScores(0);

	var answerFormId = "#form-check-answer";
	$(answerFormId).submit(function(e){
		e.preventDefault();

		if(cacheIn.service.checkAnswer()){
			cacheIn.service.init();
		}
		else{

			//	BootstrapDialog.alert('Wrong Answer');
			$('#answer').parent().parent().addClass('error');
			$('.help-inline').html('Incorrect answer.');
		}

		$(answerFormId)[0].reset();
	});

	var commentFormId = "#form-comment";
	$(commentFormId).submit(function(e){
		e.preventDefault();

		if(cacheIn.service.addComment()){
			BootstrapDialog.alert('Your comment has been posted. It will be visible after a moderator has checked it.');
		}
		else{
			BootstrapDialog.alert('Your comment could not be posted.');
		}

		$(commentFormId)[0].reset();
	});

});
