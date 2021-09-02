FROM alpine:3.13

RUN apk --no-cache upgrade && apk --no-cache add ca-certificates bash

COPY centrifugo /usr/local/bin/centrifugo
RUN chmod -R 777 /usr/local/bin/centrifugo

WORKDIR /centrifugo

CMD ["centrifugo"]
