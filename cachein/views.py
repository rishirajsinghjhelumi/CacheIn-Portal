from pyramid.response import Response
from pyramid.view import view_config

from sqlalchemy.exc import DBAPIError

from .models import (
    DBSession,
    )


@view_config(route_name='home', renderer='json',permission='__no_permission_required__')
def my_view(request):
    
    return {'home': 'home'}

@view_config(route_name='test', renderer='json',permission='__no_permission_required__')
def test_view(request):

	testDict = {	'check' : 1,
			'data' : 'Check API',
			'nums' : [1,2,3,4,5]}
	return testDict


