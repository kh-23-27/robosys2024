#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Kenta Hirachi
# SPDX-License=Identifier: BSD-3-Clause
ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

#正常な動作(自然数）
out=$(echo 5 | ./dice_roll)
[ "$?" = 0 ] || ng "$LINENO"

#正常な動作(負の数を入力したとき)
out=$(echo -2 | ./dice_roll)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "0以上の数字を入力してください。" ] || ng "$LINENO"

#ひらがなを入力したとき
out=$(echo い | ./dice_roll)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"
#アルファベットを入力したとき
out=$(echo i | ./dice_roll)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

#空白を入力したとき
out=$(echo | ./dice_roll)
[ "$?" = 1 ] || ng "$LINENO"

[ "${out}" = "" ] || ng "$LINENO"
[ "${res}" = 0 ] &&  echo OK
exit $res


