#!/bin/bash
DIR=`dirname $0`
# source $DIR/dotnet-include.sh

dotnet restore $DIR/../sampleapp/src/sampleapp/Sampleservice/Sampleservice.csproj -s https://api.nuget.org/v3/index.json
dotnet build $DIR/../sampleapp/src/sampleapp/Sampleservice/Sampleservice.csproj -v normal

cd `dirname $DIR/../sampleapp/src/sampleapp/Sampleservice/Sampleservice.csproj`
dotnet publish -o ../../../../sampleapp/sampleapp/SampleservicePkg/Code
cd -
