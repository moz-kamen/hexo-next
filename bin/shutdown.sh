APP_NAME=hexo

tpid=`ps -ef|grep $APP_NAME|grep -v grep|grep -v kill|awk '{print $2}'`
echo ${tpid}
if [ ${tpid} ]; then
    echo 'Stop Process...'
    kill $tpid

    sleep 5

    tpid=`ps -ef|grep ${APP_NAME}|grep -v grep|grep -v kill|awk '{print $2}'`
    if [ ${tpid} ]; then
        echo 'Kill Process!'
        kill -9 $tpid
    else
        echo 'Server Shutdown Success!'
    fi
else
    echo 'Server Not Working'
fi
