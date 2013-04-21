#!/bin/bash

gem install bundler

bundle install

rvm install 1.9.3
rvm use 1.9.3

bundle exec veewee vbox build 'debian-606' --force --auto --nogui
bundle exec veewee vbox validate 'debian-606'

bundle exec vagrant basebox export 'debian-606' --force
