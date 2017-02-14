#!/bin/bash

exec /yubikeyedup/src/yubiserve.py --db $DB 2>&1 | logger -t yubi

