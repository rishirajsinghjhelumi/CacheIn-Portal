from pyramid.httpexceptions import HTTPFound
from pyramid.view import view_config
from pyramid.security import authenticated_userid

from models import DBSession,User

import hashlib

@view_config(route_name='signup',renderer='json',permission='__no_permission_required__')
def userSignup(request):
    
    email = request.POST['email']
    name = request.POST['name']
    password = hashlib.sha256(request.POST['password']).hexdigest()
    
    dbFoundUser = DBSession.query(User.id).filter(User.email == email).first()
    if dbFoundUser:
        return dict(status = 0)
    
    userToSave = User(name,email,password)
    DBSession.add(userToSave)
    DBSession.flush()
    
    return dict(status = 1)
