#!/bin/bash

curl "http://localhost:4741/commutes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "commute": {
      "date": "'"${DATE}"'",
      "mode": "'"${MODE}"'",
      "time": "'"${TIME}"'"
    }
  }'

echo