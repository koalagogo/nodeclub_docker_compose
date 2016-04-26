FROM node:5.11
RUN mkdir /code
WORKDIR /code
COPY ./nodeclub/ /code
RUN make install
RUN cp config.default.js config.js
RUN sed -i "s/mongodb:\/\/127.0.0.1/mongodb:\/\/mongo/" config.js
RUN sed -i "s/redis_host: '127.0.0.1'/redis_host: 'redis'/" config.js
COPY docker-entrypoint.sh docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh
EXPOSE 8000

CMD /code/docker-entrypoint.sh
