# kilocli-server

我喜欢 cli-web 的设计，这样我可以在任何地方coding

由于官方的的docker镜像版本太久了，于是我自己封装了一些 kilocli docker镜像

镜像中封装了kilo以及一些我需要用到的东西

打包：

```bash
docker build -t kilocli-server -f ./Dockerfile .
```

因为需要和我的gitea配合，所以安装了ssh


