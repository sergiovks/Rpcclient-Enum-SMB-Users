# Rpcclient-Enum-SMB-Users
This is a bash script made for enumerating SMB users via rpcclient, modify the IP that you're aiming inside the script


```
#!/bin/bash

for u in $(cat users.txt)
  do rpcclient -U "" 192.168.13.26 -N \
  --command="lookupnames $u";
done | grep "User: 1"
```
