#!/bin/bash

sfctl application upload --path testcontainer --show-progress
sfctl application provision --application-type-build-path testcontainer
sfctl application create --app-name fabric:/testcontainer --app-type testcontainerType --app-version 1.0.0
