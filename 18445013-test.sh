#!/bin/bash

#引数が数値かどうかチェック
echo "引数は数値を入力してください" > $$-temptest
./18445013.sh number > $$-temptest-ans
diff $$-temptest-ans $$-temptest > /dev/null 2>&1 || echo "「引数は数値を入力してください」の機能が間違えています。"

#引数の数チェック
echo "引数の数は1つにしてください" > $$-temptest
./18445013.sh 1 2 > $$-temptest-ans
diff $$-temptest-ans $$-temptest > /dev/null 2>&1 || echo "「引数の数は1つにしてください」の機能が間違えています。"

#引数が数値かどうかチェック
echo "数値は2以上100以下で入力してください" > $$-temptest
./18445013.sh 1 > $$-temptest-ans
diff $$-temptest-ans $$-temptest > /dev/null 2>&1 || echo "「数値は2以上100以下で入力してください」の機能が間違えています。"

#引数が数値かどうかチェック
echo "数値は2以上100以下で入力してください" > $$-temptest
./18445013.sh 1 > $$-temptest-ans
diff $$-temptest-ans $$-temptest > /dev/null 2>&1 || echo "「数値は2以上100以下で入力してください」の機能が間違えています。"

#素数の判定がちゃんとできているかチェック
num=3
echo $num "は素数です" > $$-temptest
./18445013.sh $num > $$-temptest-ans
diff $$-temptest-ans $$-temptest > /dev/null 2>&1 || echo "「素数判定」が間違えています"

num=4
echo $num "は素数ではありません" > $$-temptest
./18445013.sh $num > $$-temptest-ans
diff $$-temptest-ans $$-temptest > /dev/null 2>&1 || echo "「素数判定」が間違えています"


rm -f ./$$-*
