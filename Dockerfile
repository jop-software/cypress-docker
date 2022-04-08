FROM cypress/browsers:latest

WORKDIR /app

COPY ./root/ /

# Do nothing, the container is ment to execute commands via docker run
ENTRYPOINT ["/bin/entrypoint.sh"]