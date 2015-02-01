#!/bin/bash

#set +x

while true; do 
td=`curl  http://autd.cmbc.com.cn/AuTD/quote.txt 2>/dev/null | grep 'Ag(T+D)' | \
cut -d '|' -f 11`
ts=`date +%s`
xag=`curl  'http://hq.sinajs.cn/?_=$ts&list=hf_XAG' 2>/dev/null | cut -d = -f 2  | cut -d , -f 1 | cut -d '"' -f 2`
echo "td" $td
echo "xag" $xag
sleep 10;

done

