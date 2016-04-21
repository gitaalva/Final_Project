#!/usr/bin/env bash
#mkdir ../virtualenv
#mkdir ../database
#mkdir ../static
virtualenv -p /usr/local/bin/python2.7 $WORKSPACE/../virtualenv
$WORKSPACE/../virtualenv/bin/pip install -r ./dependencies.txt
$WORKSPACE/../virtualenv/bin/python $WORKSPACE/group1/manage.py makemigrations
$WORKSPACE/../virtualenv/bin/python $WORKSPACE/group1/manage.py migrate
$WORKSPACE/../virtualenv/bin/python $WORKSPACE/group1/manage.py runserver
fuser -k 8000/tcp
