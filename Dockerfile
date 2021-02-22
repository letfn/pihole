FROM pihole/pihole:v5.7

RUN apt-get update && apt-get upgrade -y

COPY service /service

ENTRYPOINT [ "/service" ]

CMD [ ]
