FROM alpine:3.10

RUN set -e && \
    apk add --no-cache python3 && \
    apk add py3-flask && \
    apk add py3-psycopg2 && \
    apk add py3-configparser

COPY ./web.py /srv/app/web.py
COPY ./web.conf /srv/app/conf/web.conf

CMD ["python3", "/srv/app/web.py"]
