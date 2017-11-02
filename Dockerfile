FROM ruby:2.4.2-slim
MAINTAINER Naoto Koshikawa <koshikawa@ppworks.jp>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && \
    apt-get -y install build-essential # nio4r

RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
RUN bundle install -j4
