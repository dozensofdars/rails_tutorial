FROM ruby:2.6

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && \
    apt-get install -y \
      build-essential \
      libpq-dev \
      postgresql-client \
      nodejs \
      yarn && \
    gem install \
      solargraph \
      rails

WORKDIR /workspace
