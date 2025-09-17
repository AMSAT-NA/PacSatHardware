#!/bin/bash

INSTALL_DIR=../PacSatSW

if [ $# -lt 2 ]; then
    echo "Usage: install.sh [launchpad|blinky|afsk] <install-dir>"
    exit 1
fi

FOLDER=$1
INSTALL_DIR=$2

if [ ! -d $FOLDER ]; then
    echo "$FOLDER is not a valid folder"
    exit 1
fi

if [ ! -d $INSTALL_DIR ]; then
    echo "$INSTALL_DIR is not a valid install destination"
    exit 1
fi

rm -r $INSTALL_DIR/hcg 
rm -r $INSTALL_DIR/hcgExtras 

echo Installing $FOLDER/hcg files in $INSTALL_DIR
cp -r $FOLDER/hcg $INSTALL_DIR || exit 1
echo Installing $FOLDER/hcgExtra files in $INSTALL_DIR
cp -r $FOLDER/hcgExtras $INSTALL_DIR || exit 1
