FROM ruby:3.1.3

WORKDIR /usr/src/app

COPY . .
RUN bundle install
RUN rails db:create
RUN rails db:migrate
RUN rails db:seed
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]