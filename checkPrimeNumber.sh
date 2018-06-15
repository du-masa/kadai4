#!/bin/bash
entryNum=$1


#数値かどうかチェック
expr $1 + 0 > /dev/null 2>&1
if [ $? -ge 2 ]; then
  echo "引数は数値を入力してください"
  exit 1
fi

#引数の数チェック
if [ $# -ne 1 ]; then 
  echo "引数の数は1つにしてください"
  exit 1
fi

#数値の入力チェック
if [ $entryNum -lt 2 -o $entryNum -gt 100 ]; then
  echo "数値は2以上100以下で入力してください"
  exit 1
fi


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
if [ $flag -eq 1 ]; then
  echo $entryNum "は素数ではありません"
else
  echo $entryNum "は素数です"
fi
