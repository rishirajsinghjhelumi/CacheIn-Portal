var cacheIn = new Object();

var CacheIn = function(){

	this.question = null;
	this.user = null;
	this.scores = null;
	
	this.init = function(){

		var self = this;

		self.getUserInfo();
		self.getQuestion();
		
		var attachments = self.question.attachments;
		
		for(var i=0;i<attachments.length;i++){
			self.addImage(attachments[i]['attachment']);
		}

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

});