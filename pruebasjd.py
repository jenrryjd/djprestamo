#!/usr/bin/env python
# -*- coding: utf-8 -*-
import os
import sys

# Full path and name to your csv file
# from django.db.backends.oracle.base import to_unicode


SITE_ROOT = os.path.dirname(os.path.realpath(__file__))

your_djangoproject_home = os.path.split(SITE_ROOT)[0]

sys.path.append(your_djangoproject_home)
os.environ['DJANGO_SETTINGS_MODULE'] = 'settings'

from jdsistemas.commonviews import *


from jdsistemas.models import *

print(Persona.objects.get(pk=2))
