#!/bin/bash

#Generate the sample password using RANDOM command

echo "${RANDOM}"

#Generate the quite complex password using RANDOM command

echo "${RANDOM}${RANDOM}${RANDOM}"

#Generate the password using date commad with seconds and nano seconds

echo "$(date +%s%N)"

#Generate the password using shasum with date and random commands which is more complex

echo "$(date +%s%N)" | sha256sum | head -c18

SPECIAL_CHARACTERS=`echo "$%!@@*^&&*))^&&*"|fold -w1 |shuf |head -c1`
echo "${PASSWORD}${SPECIAL_CHARACTERS}"



