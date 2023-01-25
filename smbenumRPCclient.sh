#!/bin/bash

for u in $(cat users.txt)
  do rpcclient -U "" 192.168.13.26 -N \
  --command="lookupnames $u";
done | grep "User: 1"
