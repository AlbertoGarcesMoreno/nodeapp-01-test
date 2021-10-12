
echo "TEST SCRIPT"
echo "sleeping 5 seconds"
sleep 5
host=$1
port=$2
responseCode=$3
status=`curl http://$host:$port/test?responseCode=$responseCode -s -o /dev/null -I -w "%{http_code}"`
echo Response Status Code is: $status
if [ "$status" = "200" ]; then
    exitCode=0
    echo "Exit code is: $exitCode"
else
    exitCode=1
    echo "Exit code is: $exitCode"
fi

exit $exitCode