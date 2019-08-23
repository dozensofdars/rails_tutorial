FROM ruby:2.6

RUN apt-get update && \
    apt-get install -y \
      build-essential \
      libpq-dev \
      postgresql-client \
      nodejs \
      yarn \
      npm && \
    gem install \
      solargraph \
      rails

WORKDIR /workspace
