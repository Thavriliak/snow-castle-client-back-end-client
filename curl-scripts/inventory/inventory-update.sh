#!/bin/bash

curl --include --request PATCH "http://localhost:4741/inventories" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "inventory": {
    "product": "'"${PRODUCT}"'",
    "amount": "'"${AMOUNT}"'",
    "price": "'"${PRICE}"'",
    "size": "'"${SIZE}"'",
    "color": "'"${COLOR}"'"
    "brand_id": "'"${BRAND_ID}"'"
  }
}'
