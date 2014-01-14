# python
import sys
import logging
import MySQLdb

# pyramid
from pyramid.httpexceptions import HTTPFound
from pyramid.security import remember, forget,unauthenticated_userid
from pyramid.view import view_config

## pyramid_cs
from ..pyramid_cas.services import CASProvider
logger = logging.getLogger(__name__)

from ..user.models import User
from ..models import DBSession

cas = CASProvider()

def getUserInfo(user):
   
    print user;
    db = MySQLdb.connect(host="10.4.3.65", user="Users", passwd="!us3R!@#",db="Users")
    cursor = db.cursor()

    cursor.execute( """SELECT * FROM info where
                        username=%s 
                    """,(user))
    
    userData = cursor.fetchone()
    
    cursor.close()
    db.close()
    
    user = {}
    user['nick'] = userData[0]
    user['name'] = userData[1] + " " + userData[2]
    user['email'] = userData[2]
    
    return user
    

@view_config(name='cas-login',renderer='string',permission='__no_permission_required__')
def casLogin(request):
    """
    Cas login and user challenger view
    """
    service = cas.getServiceUrl(request)
    username = unauthenticated_userid(request)
    
    if username is None:
        ticket = request.GET.get('ticket')
        print ticket
        if ticket is None:
            return cas.sendToService(request)
        username = cas.verifyCas20(request,ticket,service)
        if username is None:
            return 'no user'
        
        settings = request.registry.settings
        if 'pyramid_cas.callback.get_user' in settings:
            callable = settings['pyramid_cas.callback.get_user']
            module = callable.split('.')[0] + '.' + callable.split('.')[1]
            caller = sys.modules[module]
            method = getattr(caller,callable.split('.')[2])
            user = method(username,request)
        else:
            user = username

        dbFoundUser = DBSession.query(User.id).filter(User.nick == user).first()
        if dbFoundUser == None:
            userInfo = getUserInfo(user)
            dbFoundUser = User(userInfo['name'],userInfo['nick'],userInfo['email'])
            DBSession.add(dbFoundUser)
            DBSession.flush()
            
        headers = remember(request,dbFoundUser.id)
        return HTTPFound(location = request.route_url('refresh'), headers = headers)
    
    else:
        return HTTPFound(location='/not-allowed')


@view_config(name='cas-logout',renderer='string')
def casLogout(request):
    """
    Cas logout page
    """
    
    headers = forget(request)
    request.session.invalidate()
    return HTTPFound(location = request.route_url('home'), headers = headers)

#    headers = forget(request)
#    request.session.clear()
#    return HTTPFound(location=cas.getLogoutUrl(request),headers=headers)


@view_config(name="not-allowed",renderer='string')
def notAllowed(request):
    return 'Not Allowed'
