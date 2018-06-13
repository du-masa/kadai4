#!/bin/bash

echo "2から100までの数値を入力してください"

#数値入力
while true; do
  read entryNum
  if [ "$entryNum" -lt "2" -o "$entryNum" -gt "100" ]; then
    echo "数値は2以上100以下で入力してください"
  else
    break
  fi
done

#素数判定
flag=0
if [ $entryNum -gt 2 ]; then
  for num in `seq 2 $((entryNum - 1))`
  do
      if [ $((entryNum % num)) -eq "0" ]; then
	flag=1
       break
      fi       
  done
fi

#結果表示
if [ "$flag" -eq "1" ]; then
  echo "$entryNum は素数ではありません"
else
  echo "$entryNum は素数です"
fi
