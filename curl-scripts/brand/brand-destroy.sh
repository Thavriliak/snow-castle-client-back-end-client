#!/bin/bash

curl --include --request DELETE "http://localhost:4741/brands/${ID}"\
  --header "Authorization: Token token=${TOKEN}"
