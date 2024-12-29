#!/bin/bash

sed -i "s#image_version_update#${imageVersion}#g" java_web_manifestFile.yml
cat java_web_manifestFile.yml |grep  'eagunuworld'
