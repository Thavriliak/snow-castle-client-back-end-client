#!/bin/bash

# TOKEN="BAhJIiU0NmU1YTI5YWI0NWM0MjZhNTE2MDM0MDk4Zjc4YmVkYwY6BkVG--3dd3ab77c645f5032a46d562ce70c75dd0a94d41" NAME="Burton" CREATED="1995" sh curl-scripts/brand/brand-create.sh

curl --include --request POST "http://localhost:4741/brands" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "brand": {
    "name": "'"${NAME}"'",
    "year_created": "'"${CREATED}"'"
  }
}'
