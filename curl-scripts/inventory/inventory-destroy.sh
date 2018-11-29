#!/bin/bash

curl --include --request DELETE "http://localhost:4741/inventories/${ID}"\
  --header "Authorization: Token token=${TOKEN}"
