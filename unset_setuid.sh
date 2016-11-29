#!/bin/bash




find . -user root -perm -4000 -exec ls  {} \; > setuid_Unset.txt

for f in $(cat setuid_Unset.txt) ; do 
  chmod ug-s $f
done

