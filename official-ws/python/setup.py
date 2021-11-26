#!/usr/bin/env python
from setuptools import setup
from os.path import join, dirname

here = dirname(__file__)

setup(name='bybit-ws',
      version='0.1.1',
      description='Sample adapter for connecting to the Bybit Websocket API.',
      author='Simon',
      author_email='simon.zhang@bybit.com',
      url='',
      install_requires=[
          'websocket-client~=1.0',
      ]
      )
