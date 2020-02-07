#!/bin/bash

docker run \
	-e 'DB=/opt/yubikeyedup/yubikeys.sqlite3' \
	-e 'PORT=8001' \
	-e 'ADDRESS=0.0.0.0' \
	-v /usr1/docker/yubikeyedup:/opt/yubikeyedup \
	-itd \
	--net host \
	--name yubikeyedup \
	simsupport/yubikeyedup
