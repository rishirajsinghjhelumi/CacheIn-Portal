<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Add Question</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Le styles -->
<link href="static/css/bootstrap.css" rel="stylesheet">
<link href="static/css/bootstrap-responsive.css" rel="stylesheet">

<body>

<form id="form-post" action="/addQuestion" method="POST"  class="form-horizontal" role="form">
${status}
Question: <input type="text" name="question"><br/>

<table>
    <tr>
        <th>Answer(s)</th>
        <th>Next Question ID</th>
        <th>Points</th>
    </tr>

    <tr>
        <td><input type="text" name="answer"></td>
        <td><input type="text" name="next_qid"></td>
        <td><input type="text" name="points"></td>
    </tr>

    <tr>
        <td><input type="text" name="answer"></td>
        <td><input type="text" name="next_qid"></td>
        <td><input type="text" name="points"></td>
    </tr>

    <tr>
        <td><input type="text" name="answer"></td>
        <td><input type="text" name="next_qid"></td>
        <td><input type="text" name="points"></td>
    </tr>

    <tr>
        <td><input type="text" name="answer"></td>
        <td><input type="text" name="next_qid"></td>
        <td><input type="text" name="points"></td>
    </tr>

    <tr>
        <td><input type="text" name="answer"></td>
        <td><input type="text" name="next_qid"></td>
        <td><input type="text" name="points"></td>
    </tr>
</table>
Attachment(s):
    <input type="file" name="attachment"><br/>
    <input type="file" name="attachment"><br/>
    <input type="file" name="attachment"><br/>
    <input type="file" name="attachment"><br/>
    <input type="file" name="attachment"><br/>
<button type="submit" class="btn btn-default">Submit</button>
</form>

<script src="static/js/jquery-1.10.2.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/d3.v3.min.js"></script>
</body>
</html>
