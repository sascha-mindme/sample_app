FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /sample_app
WORKDIR /sample_app
ADD Gemfile /sample_app/Gemfile
ADD Gemfile.lock /sample_app/Gemfile.lock
RUN bundle install
ADD . /sample_app