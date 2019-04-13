FROM ubuntu:latest
RUN apt-get update

Run mkdir -p /opt/logs
Run mkdir -p /opt/code

COPY ftp-honeypot.py /opt/code/ftp-honeypot.py
COPY server.conf /opt/code/server.conf
COPY server.conf /opt/code/server.conf
COPY users.conf /opt/code/users.conf
COPY log.log /opt/logs/log.log


Expose 42069

ENTRYPOINT ["bash"]
CMD ["-c","python /opt/code/ftp-honeypot.py"]
