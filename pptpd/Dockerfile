FROM ubuntu

RUN apt-get update && apt-get install -y net-tools iproute2 iperf3 netcat tcpdump vim iputils-ping

RUN apt-get update && \
    apt-get install -y pptpd iptables && \
    rm -rf /var/lib/apt/lists/*

RUN echo "username * password *" >> /etc/ppp/chap-secrets && \
    echo "localip 192.168.10.1" >> /etc/pptpd.conf && \
    echo "remoteip 192.168.10.100-200" >> /etc/pptpd.conf && \
    echo "ms-dns 8.8.8.8" >> /etc/ppp/pptpd-options

#EXPOSE 1723

ADD run.sh /run.sh

CMD ["/run.sh"]
