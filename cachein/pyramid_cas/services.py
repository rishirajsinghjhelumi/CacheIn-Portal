import logging
import urllib2
from urllib import urlencode
from urlparse import urljoin
from xml.etree import ElementTree

from pyramid.httpexceptions import HTTPFound

logger = logging.getLogger(__name__)

class CASProvider(object):
    """
    Provides Jasig CAS authentication mechanism for pyramid
    """

    def getServiceUrl(self,request):
        """
        Returns current application's url
        """
        
#        if 'HTTP_X_FORWARDED_HOST' in request:
#            # TODO get the http from the request
#            applicationUrl = 'http://' +  request['HTTP_X_FORWARDED_HOST']
#        else:
#            applicationUrl = request.host_url
        applicationUrl = "http://felicity.iiit.ac.in/threads/cachein/main/cas-login"
        #applicationUrl = "http://10.2.4.73:6543/cas-login"
        return applicationUrl

    def getLoginUrl(self,request,service):
        """
        Generates login url
        """
        params = {'service': service}
        config = request.registry.settings
        #cas_server = config.get('pyramid_cas.cas_server')
        cas_server = 'http://felicity.iiit.ac.in'
        return urljoin(cas_server, 'cas/login') + '?' + urlencode(params)

    def verifyCas20(self,request,ticket, service):
        """Verifies CAS 2.0+ XML-based authentication ticket.
        Returns username on success and None on failure.
        """
        params = {'ticket': ticket, 'service': service}
        config = request.registry.settings
        #cas_server = config.get('pyramid_cas.cas_server')
        cas_server = 'http://felicity.iiit.ac.in'
        url = (urljoin(cas_server, 'cas/serviceValidate') + '?' +
               urlencode(params))
        
        proxy_handler = urllib2.ProxyHandler({})
        opener = urllib2.build_opener(proxy_handler)
        urllib2.install_opener(opener)
        
        req = urllib2.Request(url, headers={'User-Agent' : "Magic Browser"}) 
        page = urllib2.urlopen( req )
        
        try:
            response = page.read()
            tree = ElementTree.fromstring(response)
            if tree[0].tag.endswith('authenticationSuccess'):
                return tree[0][0].text
            else:
                return None
        finally:
            page.close()

    def getLogoutUrl(self,request):
        """Generates CAS logout URL"""
        config = request.registry.settings
        #cas_server = config.get('pyramid_cas.cas_server')
        cas_server = 'http://felicity.iiit.ac.in'
        url = urljoin(cas_server, 'cas/logout?service=%s' % (self.getServiceUrl(request)))
        return url

    def sendToService(self,request):
        return HTTPFound(location=self.getLoginUrl(request,self.getServiceUrl(request)))

