#!/bin/bash

# TOKEN="BAhJIiU1NmJmMDBjZjYzOGZiOTY1ZGMxMmExMmIyNTllMmIwOQY6BkVG--169382150dee70583dc165ee9fbe21d275905477" OLDPW="suphomie" NEWPW="homie" sh curl-scripts/auth/change-password.sh

curl "http://localhost:4741/change-password" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo
