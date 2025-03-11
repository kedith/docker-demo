#!/bin/sh

# Prints Hello together with the value of the environment variable NAME
echo "Hello $NAME"

# Runs the command given by the command line parameters
exec "$@"

