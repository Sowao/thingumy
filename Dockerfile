FROM ruby:2.2.3

COPY . /src
WORKDIR /src

RUN apt-get -y update && apt-get -y upgrade

# RUN curl -sL https://deb.nodesource.com/setup_0.12 | bash -

# RUN apt install -y nodejs

RUN gem install bundler

RUN bundle install --full-index -j4

RUN bundle exec rake db:create

RUN bundle exec rake db:setup

RUN bundle exec rake db:migrate