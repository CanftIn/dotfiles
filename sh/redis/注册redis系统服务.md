在 `/etc/init.d` 目录下添加 Redis 服务的 启动，暂停 和 重启 脚本：
```sh
$ sudo /etc/init.d/redis
```

```sh
#!/bin/sh  
#  
# redis - this script starts and stops the redis-server daemon  
#  
# chkconfig:   - 85 15  
# description:  Redis is a persistent key-value database  
# processname: redis-server  
# config:      /usr/local/redis/bin/redis-server
# config:      /etc/redis.conf  
# Source function library.  
. /etc/rc.d/init.d/functions  
# Source networking configuration.  
. /etc/sysconfig/network  
# Check that networking is up.  
[ "$NETWORKING" = "no" ] && exit 0  
redis="/usr/local/redis/bin/redis-server" 
prog=$(basename $redis)  
REDIS_CONF_FILE="/etc/redis.conf" 
[ -f /etc/sysconfig/redis ] && . /etc/sysconfig/redis  
lockfile=/var/lock/subsys/redis  
start() {  
    [ -x $redis ] || exit 5  
    [ -f $REDIS_CONF_FILE ] || exit 6  
    echo -n $"Starting $prog: "  
    daemon $redis $REDIS_CONF_FILE  
    retval=$?  
    echo  
    [ $retval -eq 0 ] && touch $lockfile  
    return $retval  
}  
stop() {  
    echo -n $"Stopping $prog: "  
    killproc $prog -QUIT  
    retval=$?  
    echo  
    [ $retval -eq 0 ] && rm -f $lockfile  
    return $retval  
}  
restart() {  
    stop  
    start  
}  
reload() {  
    echo -n $"Reloading $prog: "  
    killproc $redis -HUP  
    RETVAL=$?  
    echo  
}  
force_reload() {  
    restart  
}  
rh_status() {  
    status $prog  
}  
rh_status_q() {  
    rh_status >/dev/null 2>&1  
}  
case "$1" in  
    start)  
        rh_status_q && exit 0  
        $1  
        ;;  
    stop)  
        rh_status_q || exit 0  
        $1  
        ;;  
    restart|configtest)  
        $1  
        ;;  
    reload)  
        rh_status_q || exit 7  
        $1  
        ;;  
    force-reload)  
        force_reload  
        ;;  
    status)  
        rh_status  
        ;;  
    condrestart|try-restart)  
        rh_status_q || exit 0  
    ;;  
    *)  
        echo $"Usage: $0 {start|stop|status|restart|condrestart|try-restart|reload|orce-reload}"  
        exit 2  
esac
```

赋予脚本文件可执行权限：
```sh
$ chmod 755 /etc/init.d/redis
```

启动、停止和重启 redis 服务：
```
service redis start
service redis stop
service redis restart
```

