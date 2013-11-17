from pyramid.httpexceptions import HTTPFound
from pyramid.view import view_config
from pyramid.security import authenticated_userid

from models import DBSession