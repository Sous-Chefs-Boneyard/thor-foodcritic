# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "thor-foodcritic/version"

Gem::Specification.new do |s|
  s.name                  = "thor-foodcritic"
  s.version               = ThorFoodCritic::VERSION
  s.authors               = ["Jamie Winsor"]
  s.email                 = ["jamie@vialstudios.com"]
  s.homepage              = "https://github.com/reset/thor-foodcritic"
  s.description           = %q{FoodCritic Thor tasks for your Cookbook projects}
  s.summary               = s.description
  s.license               = "Apache 2.0"
  s.files                 = `git ls-files`.split("\n")
  s.require_paths         = ["lib"]
  s.required_ruby_version = ">= 1.9.1"

  s.add_runtime_dependency 'thor'
  s.add_runtime_dependency 'foodcritic', '~> 3.0'
end
