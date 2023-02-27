#!/bin/bash

for u in $(cat users.txt)
  do rpcclient -U "" targetIP -N \
  --command="lookupnames $u";
done | grep "User: 1"
