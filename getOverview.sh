#!/usr/bin/bash

# USAGE
# ./getOverview.sh <wilma url> <cookie file>

# This makes a slightly nicer interface for curl
# A current cookie generated by wilmalogin.sh is required

curl -s --cookie $2 "$1/overview"
