FROM alpine:latest
RUN apk update && \
    apk add ruby && \
    gem install sinatra --no-ri --no-rdoc

COPY . /var/www/
WORKDIR /var/www/

ENTRYPOINT ["ruby", "bin/app.rb"]
