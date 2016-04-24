FROM index.docker.io/library/node:5.11
RUN mkdir /code
WORKDIR /code
COPY ./nodeclub/ /code
RUN make install
RUN cp config.default.js config.js
COPY docker-entrypoint.sh docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh
EXPOSE 8000

CMD /code/docker-entrypoint.sh
