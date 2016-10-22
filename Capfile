require "capistrano/setup"
require "capistrano/deploy"

task :use_rvm do
  require "capistrano/rvm"
end

task "production" => [:use_rvm]

set :rvm_type, :user
set :rvm_ruby_version, "2.3.1"

require "capistrano/bundler"
require "capistrano/rails"
require "capistrano/rails/assets"
require "capistrano/rails/migrations"

Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
