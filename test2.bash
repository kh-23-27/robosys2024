#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Kenta Hirachi
# SPDX-License=Identifier: BSD-3-Clause
ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

#サイコロを５回振るったとき
out=$(seq 5 | ./dice_roll)
[ "${out}" -ge 5 ] && [ "$out" -le 60 ] || ng "$LINENO"

#負の数を入力したとき
out=$(seq -2 | ./dice_roll)
[ "${out}" = "0以上の数字を入力してください。" ] || ng "$LINENO"
#文字を入力したとき
out=$(echo い | ./dice_roll)

[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "エラー:有効な数字を入力してください。" ] || ng "$LINENO"

#空白を入力したとき
out=$(echo | ./dice_roll)
[ "$?" = 1 ] 	  || ng "$LINENO"
[ "${out}" = "エラー:有効な数字を入力してください。" ] || ng "$LINENO"

[ "${res}" = 0 ] &&  echo OK
exit $res


