#!/bin/bash
NGINX_VER=1.12.2
function nginx_install(){
	wget -c http://nginx.org/download/nginx-${NGINX_VER}.tar.gz
	tar -xzf nginx-1.12.2.tar.gz
	cd nginx-1.12.2.tar.gz
	cd nginx-1.12.2
	./congigure
	make
	make install
}
case $1 in
    1)
    echo "apache install."
    ;;
    2)
    echo "mysql install"
    ;;
    3)
    echo "php install "
    ;;
    -N)
    nginx_install
    ;;
    *)
	echo "---------"
	echo -e "\033[31mUsage:{/bin/bash  1|2|3}\033[0m"
	exit 0
     ;;
esac
