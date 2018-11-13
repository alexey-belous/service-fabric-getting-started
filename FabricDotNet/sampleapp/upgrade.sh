#!/bin/bash
cd `dirname $0`
sfctl application upload --path sampleapp --show-progress
sfctl application provision --application-type-build-path sampleapp
sfctl application upgrade --app-id fabric:/sampleapp --app-version $1 --parameters "{}" --mode Monitored
cd -