#!/bin/bash

sfctl application delete --application-id testcontainer
sfctl application unprovision --application-type-name testcontainerType --application-type-version 1.0.0
sfctl store delete --content-path testcontainer
