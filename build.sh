#!/bin/bash

bundle install

bundle exec veewee vbox build 'debian-606' --force --auto --nogui
bundle exec veewee vbox validate 'debian-606'

bundle exec vagrant basebox export 'debian-606' --force
