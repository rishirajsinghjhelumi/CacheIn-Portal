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
      
      var time = scores[i].last_submit_time;

      var temp = new Date(time*1000 - 5*3600*1000);

      var newtime = temp.getDate() + "th January, " + temp.getHours() + ":" + temp.getMinutes() + ":" + temp.getSeconds();
      console.log(newtime);

      time = newtime;

      toAdd += ('<td>' + scores[i].rank + '</td>');
      toAdd += ('<td>' + scores[i].nick + '</td>');
      toAdd += ('<td>' + scores[i].name + '</td>');
      toAdd += ('<td>' + ((scores[i].cur_question) - 1 ) * 100 + '</td>');
      toAdd += ('<td>' + time + '</td>');
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
