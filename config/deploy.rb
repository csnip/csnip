default_run_options[:pty] = true

set :application, 'csnip'

role :web, "csnip-appt.org"
role :app, "csnip-appt.org"
role :db, "csnip-appt.org", :primary => true

set :rails_env, :production

set :deploy_to, "/home/#{user}/csnip-appt"

set :repository,  "git://git.assembla.com/givecamp-community-spay-neuter-initiative-partnership.git"
set :git_shallow_clone, 1
set :scm_verbose, true
