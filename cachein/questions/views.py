from pyramid.httpexceptions import HTTPFound
from pyramid.view import view_config
from pyramid.security import authenticated_userid

from models import DBSession,Attachment,Answer,Question
from ..user.models import User
from ..util import getTimeEpoch

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

@view_config(route_name='check',renderer='json')
def checkSolution(request):

    currentUser = int(authenticated_userid(request))
    user = DBSession.query(User).filter(User.id == currentUser).first()
    currentQuestion = user.question.id

    userAnswer = request.POST['answer']

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
                upload_file = value.file

                attachmentToSave = Attachment(qid = questionToSave.id, type = filename,
                                                attachment = upload_file)
                DBSession.add(attachmentToSave)
                DBSession.flush()

        return dict(status = "done")
    return dict(status = 1)

