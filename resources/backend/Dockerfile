FROM phusion/passenger-ruby26

ENV PORT=80 \
 NODE_ENV=production \
 RACK_ENV=production \
 RAILS_ENV=production \
 APP_DIR=/home/app/html

RUN mkdir -p $APP_DIR $APP_DIR/log $APP_DIR/tmp/pids

WORKDIR $APP_DIR

RUN apt-get update && apt-get upgrade -y -o Dpkg::Options::="--force-confold"
RUN apt-get install mysql-client -y && apt-get install tzdata -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
 && apt-get update && apt-get install -y nodejs
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
 && apt-get update && apt-get install yarn

ADD Gemfile $APP_DIR/Gemfile
ADD Gemfile.lock $APP_DIR/Gemfile.lock
RUN gem install bundler \
 && bundle config --global frozen 1 && bundle install --without development test

ADD package.json $APP_DIR/package.json
ADD yarn.lock $APP_DIR/yarn.lock
RUN yarn install --production=true

COPY --chown=app:app . $APP_DIR

RUN bundle exec rake assets:precompile

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#
EXPOSE $PORT

#
CMD ["passenger", "start"]
