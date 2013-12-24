var cacheIn = new Object();

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
		$('body').append('<div id="question"></div>');

		$(questionDivId).append('<p>' + self.question['question'] + '</p>');

		// Images DIV
		var imagesDivId = "#images";
		$(imagesDivId).empty();
		$('body').append('<div id="images"></div>');

		var attachments = self.question.attachments;
		for(var i=0;i<attachments.length;i++){
			self.addImage(attachments[i]['attachment']);
		}

		//Comments DIV
		var commentsDivId = "#comments";
		$(commentsDivId).empty();
		$('body').append('<div id="comments"></div>');
		
		$(commentsDivId).append("<ul>");
		
		for(var i=0;i<self.comments.length;i++){
			self.showComment(self.comments[i]);
		}
		
		$(commentsDivId).append("</ul>");

	};

	this.getUserInfo = function(){

		var self = this;
		var url = "/user";

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
		var url = "/question";

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
		var url = "/comment";

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
		var url = "/addComment";

		var commentFormId = "#form-comment";
		var comment = $(commentFormId).find('input[name="comment"]').val();

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
		var url = "/check";

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
		var url = "/scores/" + offset;

		$.ajax({
			url: url,
			type: 'GET',
			async: false,
		}).done(function(data) {
			self.scores = data['scores'];
		},"json");

	};

	this.addImage = function(image){

		var imageURL = "/attachment/" + image;
		var divId = "#images";

		var imageHTML = new Image();
		imageHTML.src = imageURL;
		imageHTML.alt = "Not Found";

		$(divId).append(imageHTML);

	};
	
	this.showComment = function(comment){
		
		var commentDivId = "#comments";
		
		var commentHTML = "<li>";
		commentHTML += "User_" + comment['user_id'] + " : " + comment['comment'];
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
			BootstrapDialog.alert('Wrong Answer');
		}

		$(answerFormId)[0].reset();
	});

	var commentFormId = "#form-comment";
	$(commentFormId).submit(function(e){
		e.preventDefault();

		if(cacheIn.service.addComment()){
			BootstrapDialog.alert('Your Comment has Been Posted. It will be visible after a moderator has checked it.');
		}
		else{
			BootstrapDialog.alert('Your Comment could not be Posted');
		}

		$(commentFormId)[0].reset();
	});

});