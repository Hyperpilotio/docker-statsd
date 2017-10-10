#!/bin/sh

TARGET_FOLDER="/usr/local/src/statsd"

git clone git://github.com/etsy/statsd.git $TARGET_FOLDER
cd $TARGET_FOLDER
npm install

