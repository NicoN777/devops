RESPONSE=$(wget --no-proxy -qO- http://$(hostname):9001/_cluster/health?wait_for_status=yellow&timeout=50s)
ERROR=$(echo "$RESPONSE" | grep -q -e '"status":"green"' -e '"status":"yellow"')

if [ -z "$ERROR" ];
then exit 0;
else exit 1;
fi


