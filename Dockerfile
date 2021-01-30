FROM pihole/pihole:v5.6

RUN apt-get update && apt-get upgrade -y

COPY service /service

ENTRYPOINT [ "/service" ]

CMD [ ]
