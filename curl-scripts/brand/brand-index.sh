#!/bin/bash

curl --include --request GET 'http://localhost:4741/brands'\
  --header "Authorization: Token token=${TOKEN}" \
