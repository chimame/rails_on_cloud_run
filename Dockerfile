FROM ruby:2.6.3-alpine3.9

RUN apk update && apk upgrade && apk add --no-cache tzdata \
  sqlite-dev \
  nodejs \
  udev \
  ttf-freefont && \
  cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN mkdir /app
WORKDIR /app

ARG BUNDLE_OPTIONS

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN apk add --no-cache --virtual .rails-builddeps alpine-sdk && \
  bundle install -j4 ${BUNDLE_OPTIONS} && \
  apk del .rails-builddeps

ADD . /app

CMD ["bin/start"]
