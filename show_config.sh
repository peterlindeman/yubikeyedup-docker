#!/bin/bash

DB='/opt/yubikeyedup/yubikeys.sqlite3'

docker exec yubikeyedup /yubikeyedup/tools/dbconf.py -yl $DB
docker exec yubikeyedup /yubikeyedup/tools/dbconf.py -al $DB

