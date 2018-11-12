Build:
```sh
$ docker build -t sfcluster .
```

Run:
```sh
$ docker run --name testcluster -d -v /var/run/docker.sock:/var/run/docker.sock -p 19080:19080 -p 19000:19000 -p 25100-25200:25100-25200 sfcluster
```

```
sfctl cluster select --endpoint http://localhost:19080
```

// npm install --global yo
// sudo npm install -g generator-azuresfcontainer


// docker.io/alexeybelous/testimage
