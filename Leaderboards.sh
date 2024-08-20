#!/bin/sh

LEADERBOARD='L%s:"0xH00fcfa=0_0xH00fd01=0_0xH0027aa=%s_N:0xH00f824=4_Z:0xH00f881=255_N:0xH00f824=4_0xH00f881=0.1._d0xH00fcf4=0_0xH00fcf4=1":"S0xH00fcdc!=15_d0xH00f9e0=0_0xH00f9e0>0Sd0xH00fa9e=1_0xH00fa9e=0":"0xH00fcdc=15_d0xH00f9e0=0_0xH00f9e0>0":"M:1=1":FRAMES:%s:Earn teacup bonus in %s area the fastest time:1'
id=111000066

exec < Leaderboards.csv

while IFS=, read -r area_id title
do
	id=$((id + 1))
	printf "$LEADERBOARD\n" "$id" "$((16#$area_id))" "$title" "$title"
done
