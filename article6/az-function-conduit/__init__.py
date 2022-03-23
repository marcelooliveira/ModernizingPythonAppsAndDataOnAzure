import logging

import azure.functions as func
from conduit.wsgi import application

def main(req: func.HttpRequest, context: func.Context) -> func.HttpResponse:
    return func.WsgiMiddleware(application).handle(req, context)
