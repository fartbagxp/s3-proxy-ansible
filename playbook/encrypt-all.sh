#!/usr/bin/env bash

FILES=$(find vault/ -type f -iname "*.yml*" ! -iname  "*sample.yml")
for line in $FILES; do 
  ansible-vault encrypt --vault-password-file ${PWD}/.vault-pass.txt "$line"
done