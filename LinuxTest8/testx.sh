#!/bin/bash
read -a arrs
for((i=0;i<${#arrs[@]};i++))
do
   for((j=0;j<${#arrs[@]}-1;j++))
do
          if [[ ${arrs[j]} -gt ${arrs[j+1]} ]]; then
               tmp=${arrs[j]}
               arrs[j]=${arrs[j+1]}
               arrs[j+1]=$tmp
          fi
done
done
echo ${arrs[@]}
