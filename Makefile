IMAGE_USER=hldtux
IMAGE_NAME=quasar-android-builder

.PHONY: run-it

create-keystore:
	keytool -genkey -v -keystore android.keystore -alias android -keyalg RSA -sigalg SHA1withRSA -keysize 2048 -validity 10000

build-push:
	DOCKER_DEFAULT_PLATFORM=linux/amd64 \
    docker build . -t ${IMAGE_NAME} --no-cache && \
	docker tag ${IMAGE_NAME} ${IMAGE_USER}/${IMAGE_NAME} && \
	docker push ${IMAGE_USER}/${IMAGE_NAME}

run-it:
	docker run -it \
  	-v `pwd`:/tmp/workdir \
  	-w /tmp/workdir \
  	${IMAGE_USER}/${IMAGE_NAME} bash

clean:
	npm run clean && cd src-cordova && npm run clean
