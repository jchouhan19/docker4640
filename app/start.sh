#!/bin/bash

./wait-for-it.sh -h db -p 3306 -t 60 -- whoami
/backend/.local/bin/gunicorn wsgi:app -b 0.0.0.0:8000
