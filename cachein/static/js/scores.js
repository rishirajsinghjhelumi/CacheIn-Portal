$(document).ready(function() {
  var scoreboard = $.getJSON("/scores/0").done(function(data) {
  console.log(data.scores);
  for(var i=0;i<data.scores.length;++i)
    {
      console.log(data.scores[i]);
      var toAdd = ('<tr>');
      toAdd += ('<td>' + data.scores[i].rank + '</td>');
      toAdd += ('<td>' + data.scores[i].name + '</td>');
      toAdd += ('<td>' + data.scores[i].score + '</td>');
      toAdd += ('</tr>');
      $('table').append(toAdd);
    }
  });
});
