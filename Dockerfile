FROM timhilliard/docker-phpenv-multiversion:latest

MAINTAINER Tim Hilliard "https://github.com/timhilliard"

ADD install.sh /tmp/install.sh
ADD entrypoint.sh /tmp/entrypoint.sh
RUN /bin/bash /tmp/install.sh
RUN rm /tmp/install.sh

ENTRYPOINT ["/bin/bash", "/tmp/entrypoint.sh"]
CMD ["/bin/bash", "--login"]
