task :environment do
  ENV["PLAYLISTER_ENV"] ||= "development"
  require_relative 'config/environment'
  # require 'logger'
  # ActiveRecord::Base.logger = Logger.new(STDOUT)
end

namespace :db do
  task :migrate => :environment do
    migrate_db
  end

  task :drop => :environment do
    drop_db
  end

  desc 'seed the database with some dummy data'
  task :seed => :environment do
    require_relative './db/seeds.rb'
  end
end

task :console => :environment do
  Pry.start
end
