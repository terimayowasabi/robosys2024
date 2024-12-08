#!/bin/bash -xv 
# SPDX-FileCopyrightText: 2024 Tomoya Suzuki

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"

out=$(echo あ| ./plus)  
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./plus)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(seq 5 | ./analysis)
[ "${out}" = [1, 2, 3, 4, 5]   中央値:3  平均値:3.0　分散:2.0  最大値:5  最小値:1 ] || ng "$LINENO"

out=$(echo あ い う> nums | cat nums| tr ' ' '\n' | ./analysis > ans)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo  > nums | cat nums| tr ' ' '\n' | ./analysis > ans)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo 1　2　3> nums | cat nums| tr ' ' '\n' | ./analysis > ans)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res
