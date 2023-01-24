FROM ruby:3.1.3

WORKDIR /usr/src/app

COPY . .
RUN bundle install
