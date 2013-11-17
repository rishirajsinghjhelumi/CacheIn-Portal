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
