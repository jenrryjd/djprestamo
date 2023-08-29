"""jdsistemas URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf import settings
from django.conf.urls import *
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path

import jdsistemas.commonviews
import jdsistemas.pruebasjd
import jdsistemas.reportes
import jdsistemas.adm_sistema
import jdsistemas.adm_producto
import jdsistemas.administrativos
import jdsistemas.adm_cliente
import jdsistemas.api

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', jdsistemas.commonviews.panel),
    path('login/', jdsistemas.commonviews.login_user),
    path('logout/', jdsistemas.commonviews.logout_user),
    path('cu', jdsistemas.commonviews.changeuser),
    path('pass', jdsistemas.commonviews.passwd),
    path('jdpruebas', jdsistemas.pruebasjd.view),
    path('adm_sistema', jdsistemas.adm_sistema.view),
    path('adm_producto', jdsistemas.adm_producto.view),
    path('adm_cliente', jdsistemas.adm_cliente.view),
    # REPORTES
    path('reportes', jdsistemas.reportes.view),
    path('administrativos', jdsistemas.administrativos.view),
    path('api', jdsistemas.api.view),
]
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

if not jdsistemas.settings.DEBUG:
    urlpatterns += path('', include(r'^static/(?P<path>.*)$', 'django.views.static.serve',
                                    {'document_root': jdsistemas.settings.STATIC_ROOT}),
                        include(r'^media/(?P<path>.*)$', 'django.views.static.serve',
                                {'document_root': jdsistemas.settings.MEDIA_ROOT}), )
