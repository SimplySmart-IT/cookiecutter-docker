FROM  python:alpine3.19
LABEL org.opencontainers.image.description="Cookiecutter in a container based on alpine 3.19"
LABEL org.opencontainers.image.authors="Martina Scholz, SimplySmart-IT <support@simplysmart-it.de>"
LABEL org.opencontainers.image.license="GPL-3.0-or-later"

RUN apk add --update \
    git  && \
    rm -rf /var/cache/apk/*

RUN pip install cookiecutter

COPY ./start.sh /start.sh

RUN chmod +x /start.sh

CMD ["./start.sh"]
