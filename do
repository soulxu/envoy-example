FROM ubuntu
RUN apt-get update
RUN apt-get install iptables
CMD ["/bin/bash", "-c", "while [true]; do sleep 1; done"]

