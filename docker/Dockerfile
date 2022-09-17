FROM ubuntu
RUN apt-get update
RUN apt-get install -y iptables
RUN apt-get install -y curl
RUN apt-get install -y iproute2
CMD ["/bin/bash", "-c", "while [ true ]; do sleep 1; done"]
