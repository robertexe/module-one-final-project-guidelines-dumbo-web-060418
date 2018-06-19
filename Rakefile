require_relative 'config/environment'
require 'sinatra/activerecord/rake'
namespace :db do
  desc 'starts a console'
  task :console do
    Pry.start
  end


  desc 'populate the db with teams'
  task :seed do
    require_relative "./db/seeds.rb"
  end
end
