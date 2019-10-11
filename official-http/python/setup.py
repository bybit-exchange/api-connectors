#!/usr/bin/env python
from setuptools import setup
from os.path import join, dirname

here = dirname(__file__)

setup(name='bybit',
      version='0.1.1',
      description='Client for connecting to the Bybit Restful API.',
      author='Simon',
      author_email='simon.zhang@bybit.com',
      url='https://github.com/bybit-exchange/api-connectors',
      install_requires=[
          'urllib3==1.24.2',
          'bravado==10.4.1'
      ]
      )
