FROM pihole/pihole:v5.2.2

RUN apt-get update && apt-get upgrade -y

COPY service /service

ENTRYPOINT [ "/service" ]

CMD [ ]
