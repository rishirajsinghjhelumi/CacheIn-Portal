from pyramid.response import Response
from pyramid.view import view_config,forbidden_view_config
from pyramid.security import remember,authenticated_userid, forget, Authenticated
from pyramid.httpexceptions import HTTPFound

from .models import (
    DBSession,
    )

@view_config(route_name='login',renderer='json',permission='__no_permission_required__')
def login(request):
    
    user_id = 1; #TODO
    
    headers = remember(request,user_id) 
    return HTTPFound(location = request.route_url('home'), headers = headers)

@view_config(route_name='logout')
def logout(request):
    headers = forget(request)
    request.session.invalidate()
    return HTTPFound(location = request.route_url('home'), headers = headers)

@view_config(route_name='home',renderer='json', permission='__no_permission_required__')
def homeView(request):
    return {'user' : None}

@view_config(route_name='home',effective_principals=[Authenticated], renderer='json')
def dashboard(request):
    currentUser = int(authenticated_userid(request))
    return {'user' : currentUser}

@forbidden_view_config()
def forbidden(request):
    return Response('Not Allowed')

@view_config(context='pyramid.exceptions.NotFound', renderer='json', permission='__no_permission_required__')
def notFound_view(request):
    notFound404 = '404 Not Found'
    return {'error' : notFound404}

