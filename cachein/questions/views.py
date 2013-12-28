from pyramid.httpexceptions import HTTPFound
from pyramid.view import view_config
from pyramid.security import authenticated_userid

from models import DBSession,Attachment,Answer,Question,Comment
from ..user.models import User
from ..util import getTimeEpoch

from sqlalchemy import and_

import os

@view_config(route_name='question',renderer='json')
def question(request):

    currentUser = int(authenticated_userid(request))
    user = DBSession.query(User).filter(User.id == currentUser).first()
    currentQuestion = user.question.id

    attachments = DBSession.query(Attachment).filter(Attachment.qid == currentQuestion).\
    order_by(Attachment.id).all()

    questionAttachments = []
    for attachment in attachments:
        tempAttachment = {}
        tempAttachment['id'] = attachment.id
        tempAttachment['type'] = attachment.type
        tempAttachment['attachment'] = attachment.attachment
        questionAttachments.append(tempAttachment)

    return dict(question = user.question.question,
                id = currentQuestion,
                attachments = questionAttachments)
    
def __neatifyAnswer(answer):
    
    answer = answer.lower()
    answer = answer.strip(' \t\n\r')
    
    whiteSpaces = [' ', '\t', '\n', '\r']
    for whiteSpace in whiteSpaces:
        answer = answer.replace(whiteSpace,"")
    
    return answer

@view_config(route_name='check',renderer='json')
def checkSolution(request):

    currentUser = int(authenticated_userid(request))
    user = DBSession.query(User).filter(User.id == currentUser).first()
    currentQuestion = user.question.id

    userAnswer = request.POST['answer']
    userAnswer = __neatifyAnswer(userAnswer)
    
    possibleAnswers = DBSession.query(Answer).filter(Answer.qid == currentQuestion).all()

    for answer in possibleAnswers:

        if answer.answer == userAnswer:
            user.cur_question = answer.next_qid
            user.score += answer.points
            user.last_submit_time = getTimeEpoch()
            DBSession.flush()
            return dict(status = 1)

    return dict(status = 0)

@view_config(route_name='addQuestion', renderer='addQuestion.mako')
def addQuestion(request):
    if request.POST:
        question = request.POST['question']

        questionToSave = Question(question)
        DBSession.add(questionToSave)
        DBSession.flush()

        next_qid = []
        points = []
        error = False
        for key, value in request.POST.iteritems():
            if key == "next_qid" and value != "":
                next_qid.append(value)
            elif key == "points" and value != "":
                points.append(value)

        k = 0
        for key, value in request.POST.iteritems():
            if key == "answer" and value != "":
                if next_qid[k] == "" or points[k] == "":
                    error = True
                else:
                    answerToSave = Answer(qid = questionToSave.id, next_qid = next_qid[k],
                                            answer = value, points = points[k])
                    DBSession.add(answerToSave)
                    DBSession.flush()
                k = k + 1
            elif key == "attachment" and value != "":
                filename = value.filename
                input_file = value.file

                file_path = os.path.join('cachein/static/attachments', '%s' % filename)
                temp_file_path = file_path + '~'
                output_file = open(temp_file_path, 'wb')

                input_file.seek(0)
                while True:
                    data = input_file.read(2<<16)
                    if not data:
                        break
                    output_file.write(data)

                output_file.close()
                os.rename(temp_file_path, file_path)
                attachmentToSave = Attachment(qid = questionToSave.id, type = filename.split(".")[-1],
                                                attachment = filename)
                DBSession.add(attachmentToSave)
                DBSession.flush()

        return dict(status = "done")
    return dict(status = "")

@view_config(route_name='comment',renderer='json')
def comments(request):

    currentUser = int(authenticated_userid(request))
    user = DBSession.query(User).filter(User.id == currentUser).first()
    currentQuestion = user.question.id
    
    comments = DBSession.query(Comment).filter(and_(Comment.qid == currentQuestion , Comment.visual == 1)).\
    order_by(Comment.id).all()
    
    questionComments = []
    for comment in comments:
        tempComment = {}
        tempComment['id'] = comment.id
        tempComment['user_id'] = comment.user_id
        tempComment['comment'] = comment.comment
        questionComments.append(tempComment)
    
    return dict(comments = questionComments)

@view_config(route_name='addComment',renderer='json')
def addComment(request):
    
    if request.POST:
        comment = request.POST['comment']
        
        if comment == None or comment == "":
            return dict(status = 0)
        
        currentUser = int(authenticated_userid(request))
        user = DBSession.query(User).filter(User.id == currentUser).first()
        currentQuestion = user.question.id
        
        commentToSave = Comment(comment,currentQuestion,currentUser)
        DBSession.add(commentToSave)
        DBSession.flush()
        
        return dict(status = 1)
        
    else:
        return dict(status = 0)
        