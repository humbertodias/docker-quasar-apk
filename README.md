# quasar-android-builder
Docker container that can build apk from quasar project

```shell
QUASAR_PROJECT_WORKDIR=`pwd`
docker run -it \
  	-v $QUASAR_PROJECT_WORKDIR:/home/quasar/workdir \
  	-w /home/quasar/workdir \
  	hldtux/quasar-android-builder bash
```

# Ref
https://hub.docker.com/r/hldtux/quasar-android-builder