#!/bin/bash

read -r NEWNAME
echo "NEWNAME=$NEWNAME"
mkdir $NEWNAME
cp -r ./new/* $NEWNAME
