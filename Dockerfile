FROM pihole/pihole:v4.4

COPY service /service

ENTRYPOINT [ "/service" ]

CMD [ ]
