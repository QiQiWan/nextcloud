FROM nextcloud:latest

LABEL maintainer="Ghostry <ghostry.green@gmail.com>"

RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -yyq sudo python-pip aria2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --upgrade youtube_dl

ADD start.sh /start.sh
ADD aria2.conf /aria2.conf

RUN chmod 755 /start.sh

VOLUME /var/www/html

CMD ["/start.sh"]
