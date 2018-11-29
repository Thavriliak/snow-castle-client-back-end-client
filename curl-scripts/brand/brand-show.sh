#!/bin/bash

curl --include --request GET "http://localhost:4741/brands/${ID}"\
  --header "Authorization: Token token=${TOKEN}"
