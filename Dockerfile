FROM pihole/pihole:v5.1.2

COPY service /service

ENTRYPOINT [ "/service" ]

CMD [ ]
