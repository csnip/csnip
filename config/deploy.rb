default_run_options[:pty] = true

set :application, 'csnip'
set :server, 'csnip-appt.org'

role :web, server
role :app, server
role :db, server, :primary => true

set :rails_env, :production

set :deploy_to, "/home/#{user}/csnip-appt"

set :repository,  "git://git.assembla.com/givecamp-community-spay-neuter-initiative-partnership.git"
set :git_shallow_clone, 1
set :scm_verbose, true
