#!/bin/bash

if [ "$PORT" -eq "" ]; then
	PORT = 8000
fi

if [ "$ADDRESS" -eq "" ]; then
	ADDRESS = "0.0.0.0"
fi


exec /yubikeyedup/src/yubiserve.py --port $PORT --address $ADDRESS --db $DB 2>&1 | logger -t yubi
