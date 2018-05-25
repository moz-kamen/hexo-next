APP_NAME=hexo
tpid=`ps -ef|grep $APP_NAME|grep -v grep|grep -v kill|awk '{print $2}'`

if [ ! ${tpid} ]
  then
    nohup hexo s ../ > /dev/null 2>&1 &

    echo Server Start Success!
  else
    echo Server Already Started!
fi
