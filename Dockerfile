FROM ubuntu:latest
RUN apt-get update

Run mkdir -p /opt/logs
Run mkdir -p /opt/code

COPY ftp-honeypot.py /opt/code/ftp-honeypot.py
COPY server.conf /opt/code/server.conf
COPY users.conf /opt/code/users.conf
COPY log.log /opt/logs/log.log

# dont use port 21 on root, dont be an idiot
# you can use iptables or ufw to redirct port 42069 to port 21 instead
Expose 42069

ENTRYPOINT ["bash"]
CMD ["-c","python /opt/code/ftp-honeypot.py"]
