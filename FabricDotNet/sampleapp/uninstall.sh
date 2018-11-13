#!/bin/bash


sfctl application delete --application-id sampleapp
sfctl application unprovision --application-type-name sampleappType --application-type-version 1.0.0
sfctl store delete --content-path sampleapp