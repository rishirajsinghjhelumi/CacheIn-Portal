from pyramid.config import Configurator
from sqlalchemy import engine_from_config
from pyramid.authentication import AuthTktAuthenticationPolicy
from pyramid.authorization import ACLAuthorizationPolicy
from pyramid.security import Authenticated

from pyramid.session import UnencryptedCookieSessionFactoryConfig
import os
import logging

from .models import (
    DBSession,
    Base,
    )

here = os.path.dirname(os.path.abspath(__file__))
log = logging.getLogger(__name__)

def main(global_config, **settings):
    """ This function returns a Pyramid WSGI application.
    """
    engine = engine_from_config(settings, 'sqlalchemy.')
    DBSession.configure(bind=engine)
    Base.metadata.bind = engine

    settings['mako.directories'] = os.path.join(here,'templates')

    session_factory = UnencryptedCookieSessionFactoryConfig('itsaseekreet')
    config = Configurator(settings=settings,root_factory='.models.RootFactory', session_factory=session_factory)

    authn_policy = AuthTktAuthenticationPolicy('seekrit', hashalg='sha512')
    authz_policy = ACLAuthorizationPolicy()
    config.set_authentication_policy(authn_policy)
    config.set_authorization_policy(authz_policy)
    config.set_default_permission(Authenticated)

    config.add_static_view('static', 'static')
    config.add_static_view('attachment',os.path.join(here, 'static/attachments'))
    config.add_static_view('css',os.path.join(here, 'static/css'))
    config.add_static_view('js',os.path.join(here, 'static/js'))
    config.include('pyramid_chameleon')


    """ Routes Here """
    config.add_route('home', '/')
    config.add_route('refresh', '/refresh')
    config.add_route('signup', '/signup')
    config.add_route('login', '/login')
    config.add_route('logout', '/logout')
    config.add_route('user', '/user')
    config.add_route('question', '/question')
    config.add_route('check', '/check')
    config.add_route('scores', '/scores/{offset}')
    config.add_route('addQuestion', '/addQuestion')
    config.add_route('addComment', '/addComment')
    config.add_route('comment', '/comment')
    config.add_route('scoreboard', '/scoreboard')
    config.add_route('profile', '/profile')
    config.add_route('getUserName', '/getUserName')
    config.add_route('showTimer', '/showTimer')
    config.add_route('rules', '/rules')
    config.add_route('organizers', '/organizers')
    
    config.scan()
    return config.make_wsgi_app()
