FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn

WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install

# docker run -v ~/port/prouct-register:/produt-register -p 3000:3000 -it 883aad89ac9f bash