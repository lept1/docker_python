#!/bin/bash

#echo "Hello, $1!"

case $1 in

	build)
	    echo -n "building Docker ubuntu ..."
	    docker build --file Dockerfile . -t ubuntu
	    ;;
	    
	start)
	    echo -n 'starting ubuntu ...'
	    #docker run -d -p 80:80 -v $(pwd)/../volume_w2v:/usr/share/volume_w2v --name rest_server query_api
	    #docker run -d -p 8101:80 -v /home/dpellegrini/modelli_w2v:/usr/share/volume_w2v --name rest_server query_api
	    docker run -it --name ubuntu_con ubuntu
	    ;;

  	stop)
	    echo -n "stop"
	    docker stop ubuntu_con
	    docker rm ubuntu_con
	    ;;
esac
