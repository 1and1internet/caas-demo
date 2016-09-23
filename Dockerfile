FROM 1and1internet/ubuntu-16
RUN apt update && \
    apt install ruby -y && \
    gem install sinatra

COPY . /var/www/
WORKDIR /var/www/

ENTRYPOINT ["ruby", "bin/app.rb"]
