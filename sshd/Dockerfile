FROM jiangjqian/edgegw

RUN apt-get update && apt-get install -y openssh-client openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:baicells' | chpasswd
RUN sed -i 's/.PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
