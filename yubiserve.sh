#!/bin/bash

exec /sbin/setuser nobody /yubikeyedup/src/yubiserve.py --db $DB 2>&1 | logger -t yubi
