#!/bin/bash
cd `dirname $0`
sfctl application upload --path sampleapp --show-progress
sfctl application provision --application-type-build-path sampleapp
sfctl application create --app-name fabric:/sampleapp --app-type sampleappType --app-version 1.0.0
cd -
