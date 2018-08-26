#!/bin/bash
#nginx qidong jiaoben v0.1
#20180818
#by yashua
mecho(){
echo -e  "\033[${1}m${2}\033[0m"
}
case $1 in
start)
ss -antpu | grep nginx &>/dev/null
   if  [ $? -ne 0 ]; then
   /usr/local/nginx/sbin/nginx && mecho 32 "nginx start success" ||mecho 31  "error"
else
mecho 32 "nginx start success"
fi
;;
stop)
   /usr/local/nginx/sbin/nginx -s stop && mecho 32 "nginx stop success" || mecho 31 "error"
;;
restart)
    ss -antpu | grep nginx &>/dev/null
   if  [ $? -eq 0 ]; then
   /usr/local/nginx/sbin/nginx -s stop &&  /usr/local/nginx/sbin/nginx && mecho 32 "nginx restart success" || mecho 31 error
   else
   /usr/local/nginx/sbin/nginx  && mecho 32 "nginx restart success" || mecho 31 "error"
fi
;;
status)
    /usr/local/nginx/sbin/nginx -V
    ss -antpu | grep nginx || echo -e "\033[31merror\033[0m"
;;
reload)
   /usr/local/nginx/sbin/nginx -s reload && mecho 32 "nginx reload success" || mecho 31 "error"
;;
*)
     mecho 33  './nginx.ctl start|stop|restart|status'
;;
esac
