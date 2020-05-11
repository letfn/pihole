FROM pihole/pihole:v5.0

COPY service /service

ENTRYPOINT [ "/service" ]

CMD [ ]
