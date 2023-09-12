[![Deploy](https://github.com/humbertodias/docker-quasar-apk/actions/workflows/deploy.yml/badge.svg)](https://github.com/humbertodias/docker-quasar-apk/actions/workflows/deploy.yml)

# quasar-apk
Docker container [quasar-apk](https://hub.docker.com/r/hldtux/quasar-apk) that can build apk from [quasar](quasar.dev) project.

```shell
QUASAR_PROJECT_WORKDIR=`pwd`
docker run -it \
  	-v $QUASAR_PROJECT_WORKDIR:/home/quasar/workdir \
  	-w /home/quasar/workdir \
  	hldtux/quasar-apk bash
```
