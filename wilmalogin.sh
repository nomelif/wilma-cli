#!/usr/bin/bash

# USAGE
# ./wilmalogin.sh <wilma url> <username> <password> <cookie file>

# This file generates a session cookie with the login for use in other similar scripts.

# Get the session id

id=`curl -s $1 |grep SESSION| ./sessionid.py`

# Attempt to login

err=`curl -sL --cookie-jar $4 --data "Login=$2&Password=$3&submit=Kirjaudu Sisään&SESSIONID=$id" "$1/login"| grep error_cant_login`

# If stuff went wrong

if [ ! -z "$err" ]; then
  exit 1
fi
