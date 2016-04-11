#!/bin/sh

git pull
bundle install && \
# run rake db:create and db:seed if run this first time
rake db:migrate && \
touch tmp/restart.txt && \
# bundle exec sidekiqctl stop tmp/pids/sidekiq.pid && bundle exec sidekiq -C config/sidekiq.yml && \
rake tmp:clear
