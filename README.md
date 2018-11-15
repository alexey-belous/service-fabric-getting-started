# Overview
## Working example (on Mac and Windows is in the [`FabricDotNet`](./FabricDotNet) folder).
## [`TestImage`](./TestImage) folder contains an example of SF app, represented as docker image.

# Getting started
## For Windows
### Reuqired software:
See here: https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-get-started

And here: https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-cli

### Setup:
1. Go to the FabricDotNet/sampleapp
1. Run `sfctl cluster select --endpoint http://localhost:19080` (choose local SF cluster to work with)
1. Run `build.sh` script
1. Since there's an [issue](https://github.com/Microsoft/service-fabric-cli/issues/51) in the SF CLI utility you must perform additional changes in the install.sh script
    1. Go to the service fabric explorer (usually is on the http://localhost:19080/Explorer/index.html#/)
    1. On the main page select manifest tab on the right
    1. Find out `ImageStoreConnectionString` property
    1. Copy its value as `--imagestore-string="file:C:\SfDevCluster\Data\ImageStoreShare"` of the `sfctl application upload` command in the `install.sh` script.
1. Run `install.sh` script
1. As the result, an example app is installed on the local Service fabric cluster


## For Mac
### Reuqired software:
1. Docker
1. Dotnet core 2.0
1. Service Fabric CLI: https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-cli

### Run Service Fabric Cluster as the Docker container (all commands must be performed from the repo's root):
1. Build the image of the SF cluster: `$ docker build -t sfcluster . `
1. Run the image: `docker run --name testcluster -d -v /var/run/docker.sock:/var/run/docker.sock -p 19080:19080 -p 19000:19000 -p 25100-25200:25100-25200 sfcluster`
1. Check if it's works (please note that startup may take some time, about few minutes) by following URL: http://localhost:19080/Explorer/index.html

### Setup:
1. Go to the FabricDotNet/sampleapp
1. Run `sfctl cluster select --endpoint http://localhost:19080` (choose local SF cluster to work with)
1. Run `build.sh` script
1. Run `install.sh` script
1. As the result, an example app is installed on the local Service fabric cluster




## Some notes

```
npm install --global yo
sudo npm install -g generator-azuresfcontainer
docker.io/alexeybelous/testimage
```