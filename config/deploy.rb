require 'bundler/capistrano'

server '46.101.160.13', :web, :app, :db, primary: true
set :user, 'marcin'
set :application, 'cap'
set :deploy_to, "/home/#{user}/apps/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false


set :scm, "git"
set :repository, "git@github.com:urbanmarcin/#{application}.git"
set :branch, "master"

default_run_options[:pty] = true
ssh_options[:forward_agent] = true
default_run_options[:shell] = '/bin/bash --login'

after "deploy", "deploy:cleanup"
