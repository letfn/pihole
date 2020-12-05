FROM pihole/pihole:v5.2.1

COPY service /service

ENTRYPOINT [ "/service" ]

CMD [ ]
