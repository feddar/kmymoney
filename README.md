# kmymoney
Dockerized KMyMoney
(https://kmymoney.org/)

## How to run
(as your username)
```  
HOME="$(echo ~)"
mkdir -p ${HOME}/kmymoney-docker-home
xhost +

sudo docker run -ti \
    --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v ${HOME}/kmymoney-docker-home:${HOME} \
    -v /media/dati:/media/dati \
    --workdir ${HOME} \
    -e DISPLAY=$DISPLAY \
    -e HOME=${HOME} \
    -e USER=${USER} \
    -e USERID=${UID} \
    neomediatech/kmymoney
```
