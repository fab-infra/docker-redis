# Redis server based on openSUSE Leap 15.1
FROM fcrespel/base-image:opensuse15.1

# Redis
RUN zypper in -y redis &&\
	zypper clean -a

# Files
COPY ./root /
RUN chmod +x /run.sh &&\
	chmod a+rw /etc/passwd /etc/group &&\
	chmod -R a+rwX /var/lib/redis /var/lib/redis/default

# Ports
EXPOSE 6379
