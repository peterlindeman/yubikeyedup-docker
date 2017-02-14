#!/bin/bash

docker run \
	-e 'DB=/opt/yubikeyedup/yubikeys.sqlite3' \
	-v /opt/yubikeyedup:/opt/yubikeyedup \
	-itd \
	--net host \
	--name yubikeyedup \
	srozb/yubikeyedup
