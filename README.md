[![Deploy](https://github.com/humbertodias/quasar-android-builder/actions/workflows/deploy.yml/badge.svg)](https://github.com/humbertodias/quasar-android-builder/actions/workflows/deploy.yml)

# quasar-android-builder
Docker container [quasar-android-builder](https://hub.docker.com/r/hldtux/quasar-android-builder) that can build apk from [quasar](quasar.dev) project.

```shell
QUASAR_PROJECT_WORKDIR=`pwd`
docker run -it \
  	-v $QUASAR_PROJECT_WORKDIR:/home/quasar/workdir \
  	-w /home/quasar/workdir \
  	hldtux/quasar-android-builder bash
```
