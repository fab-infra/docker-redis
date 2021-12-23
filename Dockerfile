# Redis server based on openSUSE Leap 15.3
FROM ghcr.io/fab-infra/base-image:opensuse15.3

# Redis
RUN zypper in -y redis &&\
	zypper clean -a

# Files
COPY ./root /
RUN chmod a+rw /etc/passwd /etc/group &&\
	chmod -R a+rwX /var/lib/redis /var/lib/redis/default

# Ports
EXPOSE 6379
