FROM alpine:latest
RUN apk update && \
    apk add ruby && \
    gem install sinatra --no-ri --no-rdoc

COPY . /var/www/
WORKDIR /var/www/

EXPOSE 3000

ENTRYPOINT ["ruby", "bin/app.rb"]
