# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)

require 'bundler'
require 'bundler/setup'
require 'thor/rake_compat'

class Default < Thor
  include Thor::RakeCompat
  Bundler::GemHelper.install_tasks
  # Disable the push to rubygems.org
  Rake::Task[:release].clear

  desc "build", "Build berkshelf-#{ThorFoodCritic::VERSION}.gem into the pkg directory"
  def build
    Rake::Task["build"].execute
  end

  desc "install", "Build and install berkshelf-#{ThorFoodCritic::VERSION}.gem into system gems"
  def install
    Rake::Task["install"].execute
  end

  desc "release", "Create tag v#{ThorFoodCritic::VERSION} and build and push berkshelf-#{ThorFoodCritic::VERSION}.gem to Rubygems"
  def release
    Rake::Task["release"].execute
  end
end
