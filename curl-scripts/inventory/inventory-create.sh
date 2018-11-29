#!/bin/bash

# TOKEN="BAhJIiVkNDkyOGQ0NmUxZTYwMGQwMDdhZDYyYTFlYWExODYzZAY6BkVG--da0ded0b53e57f8fea722104cb569cfd4dc9f2e7" PRODUCT="Snowboard" AMOUNT=4 PRICE=425.00 SIZE="158 cm" COLOR="Black" BRAND_ID="1" sh curl-scripts/inventory/inventory-create.sh

curl --include --request POST "http://localhost:4741/inventories" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "inventory": {
    "product": "'"${PRODUCT}"'",
    "amount": "'"${AMOUNT}"'",
    "price": "'"${PRICE}"'",
    "size": "'"${SIZE}"'",
    "color": "'"${COLOR}"'",
    "brand_id": "'"${BRAND_ID}"'"
  }
}'
