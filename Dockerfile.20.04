FROM neomediatech/ubuntu-base:20.04

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update && \ 
    apt-get install -y tzdata && \
    ln -fs /usr/share/zoneinfo/Europe/Rome /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata && \
    apt-get install -y -q kmymoney && \
    rm -rf /var/lib/apt/lists/*

ENV QT_GRAPHICSSYSTEM="native"
COPY entrypoint.sh /
RUN chmod +x entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]
