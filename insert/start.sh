#!/bin/bash
./wait-for-it.sh -h db -p 3306 -t 60 -- whoami
./wait-for-it.sh -h app -p 8000 -t 60 -- whoami
curl -X POST -H "Content-Type: application/json" -d '{"name": "'"Jugraj Chouhan"'", "bcit_id": "'"A01248876"'"}' http://app:8000/add
