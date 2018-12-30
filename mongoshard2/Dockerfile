FROM mongobase

COPY resources/mongod.conf /etc/

EXPOSE 22 27017

VOLUME [ "/sys/fs/cgroup" ]

CMD ["/lib/systemd/systemd"]