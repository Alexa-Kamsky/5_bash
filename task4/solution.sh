#!/bin/bash

DIR=$1

find "$DIR" -type f -exec chmod 640 {} \;
find "$DIR" -type d -exec chmod 750 {} \;
