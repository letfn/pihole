FROM pihole/pihole:v5.2.2

COPY service /service

ENTRYPOINT [ "/service" ]

CMD [ ]
