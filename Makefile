ANDROID_SDK_VERSION=8092744
ANDROID_TOOLS_VERSION=27
ANDROID_TOOLS_VERSION=27.0.3
IMAGE_USER=hldtux
IMAGE_TAG=sdk${ANDROID_SDK_VERSION}
IMAGE_NAME=quasar-apk:${IMAGE_TAG}

create-keystore:
	keytool -genkey -v -keystore android.keystore -alias android -keyalg RSA -sigalg SHA1withRSA -keysize 2048 -validity 10000

build:
	docker build . -t ${IMAGE_NAME} --no-cache

build-linux:
	DOCKER_DEFAULT_PLATFORM=linux/amd64 \
	$(MAKE) build

tag:
	docker tag ${IMAGE_NAME} ${IMAGE_USER}/${IMAGE_NAME}

build-push:	build	tag
	docker push ${IMAGE_USER}/${IMAGE_NAME}

.PHONY: run-it
run-it:
	docker run --rm -it \
  	-v `pwd`:/tmp/workdir \
  	-w /tmp/workdir \
  	${IMAGE_USER}/${IMAGE_NAME} bash

quasar-clean:
	npm run clean && cd src-cordova && npm run clean
