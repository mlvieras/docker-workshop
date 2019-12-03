FROM ruby:2.6.3

RUN gem install bundler -v 2.0.2

# Change user to avoid running commands with root user.
RUN groupadd --gid 1000 ruby \
  && useradd --uid 1000 --gid ruby --shell /bin/bash --create-home ruby
USER ruby

WORKDIR /code

COPY Gemfile ./
COPY Gemfile.lock ./

COPY --chown=ruby:ruby . .

RUN bundle install --path .bundle

EXPOSE 3000

CMD rm -f tmp/pids/server.pid && RAILS_ENV=production bundle exec puma -p 3000
