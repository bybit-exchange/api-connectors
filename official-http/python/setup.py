#!/usr/bin/env python
from setuptools import setup
from os.path import join, dirname

here = dirname(__file__)

setup(name='Bybit',
      version='0.2.4',
      description='Client for connecting to the Bybit Restful API.',
      author='Bybit',
      author_email='api@bybit.com',
      url='https://github.com/bybit-exchange/api-connectors',
      install_requires=[
          'urllib3==1.24.2',
          'bravado==10.4.1'
      ]
      )
