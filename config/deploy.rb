default_run_options[:pty] = true

# set :user, 'root'
set :user, 'cloud'
set :domain, 'boltlab.com'  # this domain name must be setup on the server to be catching the uri

set :application, 'groupme'

# Remote git repository - path as you would get there logging in as specified user above
set :repository,  "#{user}@#{domain}:../git/grooopme.git"

set :deploy_to, "/home/apps/#{application}"  # Production directory

set :deploy_via, :remote_cache
set :scm, 'git'
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true
set :use_sudo, true  # Usualy necessary if not on a shared host

server domain, :app, :web
role :db, domain, :primary => true

# Run upon 'cap deploy:x'
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :cold do
    update
    # create
    # migrate  # Runs a 'rake db:migrate'
    start
  end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

# Run a 'bundle install' and create symlink
namespace :bundler do
  task :create_symlink, :roles => :app do
    shared_dir = File.join(shared_path, 'bundle')
    release_dir = File.join(current_release, '.bundle')
    run("mkdir -p #{shared_dir} && ln -s #{shared_dir} #{release_dir}")
  end
 
  task :bundle_new_release, :roles => :app do
    bundler.create_symlink
    run "cd #{release_path} && bundle install --without test"
  end
end

namespace :db do
  task :create, :roles => :app do
    run "cd #{release_path} && rake db:create"
  end
  task :migrate, :roles => :app do
    run "cd #{release_path} && rake db:migrate"
  end
end

namespace :ts do
  task :stop, :roles => :app do
    run "cd #{release_path} && sudo rake ts:stop RAILS_ENV=production"
    sleep 5
  end
  task :index, :roles => :app do
    run "cd #{release_path} && sudo rake ts:index RAILS_ENV=production"
    sleep 10
  end
  task :start, :roles => :app do
    run "cd #{release_path} && sudo rake ts:start RAILS_ENV=production"
  end
end