#!/bin/bash

curl --include --request PATCH "http://localhost:4741/brands" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "brand": {
    "name": "'"${PRODUCT}"'",
    "year_created": "'"${AMOUNT}"'"
  }
}'
