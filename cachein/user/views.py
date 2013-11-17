from pyramid.httpexceptions import HTTPFound
from pyramid.view import view_config
from pyramid.security import authenticated_userid
from pyramid.security import remember

from models import DBSession,User

import hashlib

@view_config(route_name='signup',renderer='json',permission='__no_permission_required__')
def userSignup(request):
    
    name = request.POST['name']
    email = request.POST['email']
    password = hashlib.sha256(request.POST['password']).hexdigest()
    
    dbFoundUser = DBSession.query(User.id).filter(User.email == email).first()
    if dbFoundUser:
        return dict(status = 0)
    
    userToSave = User(name,email,password)
    DBSession.add(userToSave)
    DBSession.flush()
    
    headers = remember(request,userToSave.id)
    return HTTPFound(location = request.route_url('home'), headers = headers)

@view_config(route_name='user',renderer='json')
def userProfile(request):
    
    currentUser = int(authenticated_userid(request))
    user = DBSession.query(User).filter(User.id == currentUser).first()
    
    return dict(name = user.name,
                question = user.cur_question,
                score = user.score)
    
@view_config(route_name='scores',renderer='json',permission='__no_permission_required__')
def scoreboard(request):
    
    offset = int(request.matchdict['offset'])
    userLimit = 10
    users = DBSession.query(User).\
    order_by(User.score.desc()).order_by(User.last_submit_time.asc()).\
    limit(userLimit).offset(offset).\
    all()
    
    rank = offset + 1
    userRanks = []
    for user in users:
        tempUser = {}
        tempUser['id'] = user.id
        tempUser['rank'] = rank
        tempUser['name'] = user.name
        tempUser['cur_question'] = user.cur_question
        tempUser['score'] = user.score
        userRanks.append(tempUser)
        rank += 1
        
    return dict(scores = userRanks)
