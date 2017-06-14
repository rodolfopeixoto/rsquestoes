FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /rsquestoes
WORKDIR /rsquestoes
ADD Gemfile /rsquestoes/Gemfile
ADD Gemfile.lock /rsquestoes/Gemfile.lock
RUN bundle install
ADD . /rsquestoes 
