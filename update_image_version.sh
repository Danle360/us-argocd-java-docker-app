#!/bin/bash
imageVersion="danle360/us-argocd-java-web-application:v$BUILD_NUMBER"
sed -i "s#image_version_update#${imageVersion}#g" java_web_manifestFile.yml
cat java_web_manifestFile.yml |grep  'danle'
