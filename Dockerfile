FROM pihole/pihole:v5.1.1

COPY service /service

ENTRYPOINT [ "/service" ]

CMD [ ]
