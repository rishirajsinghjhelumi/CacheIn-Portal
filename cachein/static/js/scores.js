var scores = null;
var baseUrl = "";

var getScores = function(offset){

    var url = baseUrl + "scores/" + offset;

    $.ajax({
      url: url,
      type: 'GET',
      async: false,
    }).done(function(data) {
      scores = data['scores'];
    },"json");

    displayScores();

};

var displayScores = function(){

  $('table > tr').remove();
  for(var i=0;i<scores.length;++i)
    {
      var toAdd = ('<tr>');
      toAdd += ('<td>' + scores[i].rank + '</td>');
      toAdd += ('<td>' + scores[i].name + '</td>');
      toAdd += ('<td>' + scores[i].score + '</td>');
      toAdd += ('</tr>');
      $('table').append(toAdd);
    }

}

$(document).ready(function() {
  
  getScores(0);

  $("#previous-scores").click(function(){
    
    var currentMinRank = scores[0].rank;
    if(currentMinRank >= 10){
        getScores(currentMinRank - 10);
    }

  });

  $("#next-scores").click(function(){

    var scoresLength = scores.length;
    if(scores.length == 10){
        getScores(currentMinRank + 10);
    }

  });


});
