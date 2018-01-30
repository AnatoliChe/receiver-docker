FROM debian:stretch

RUN apt-get update > /dev/null &&  apt-get -y -q install \
    python3-pip > /dev/null
RUN pip3 install pika pyyaml
RUN mkdir -p /var/log/receiver
RUN mkdir -p /var/log/my_project/receiver/

COPY receiver.py /opt/

CMD ["/usr/bin/python3", "/opt/receiver.py"]
