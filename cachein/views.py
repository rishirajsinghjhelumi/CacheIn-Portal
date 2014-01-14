from pyramid.response import Response
from pyramid.view import view_config,forbidden_view_config
from pyramid.security import remember,authenticated_userid, forget, Authenticated
from pyramid.httpexceptions import HTTPFound

from models import DBSession
from user.models import User

from sqlalchemy import and_
import hashlib

showTimer = 1

@view_config(route_name='showTimer',renderer='timer.mako')
def showTimer(request):
    
    return {}

@view_config(route_name='rules',renderer='rules.mako')
def rules(request):
    
    return {}

@view_config(route_name='organizers',renderer='organizers.mako')
def organizers(request):
    
    return {}

@view_config(route_name='home',renderer='index.mako', permission='__no_permission_required__')
def homeView(request):
    
    return HTTPFound(location = '/cas-login')
    return {}

@view_config(route_name='home',effective_principals=[Authenticated], renderer='dashboard.mako')
def dashboard(request):

    if showTimer:
        return HTTPFound(location = "http://felicity.iiit.ac.in/threads/cachein/")
    
    return {}

@forbidden_view_config()
def forbidden(request):
    return Response('Not Allowed')

@view_config(context='pyramid.exceptions.NotFound', renderer='json', permission='__no_permission_required__')
def notFound_view(request):
    notFound404 = '404 Not Found'
    return {'error' : notFound404}

