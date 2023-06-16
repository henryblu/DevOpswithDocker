FROM docker:latest

WORKDIR /usr/src/app

COPY . .

RUN chmod +x ./builder.sh

ENTRYPOINT [ "./builder.sh" ]