$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'capistrano/cache/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'capistrano-cache'
  s.version     = Capistrano::Cache::VERSION
  s.authors     = ['Piotr Kędziak']
  s.email       = ['piotr@kedziak.com']
  s.homepage    = 'https://github.com/piotr-kedziak/capistrano-cache'
  s.summary     = 'Capistrano tesk to clead a cache on your Rails instances'
  s.description = 'Designed to run Rails.cache.clear on your instances menaged by Capistrano'
  s.license     = 'MIT'

  s.files         = `git ls-files`.split($/)
  s.require_paths = ['lib']

  s.add_dependency 'capistrano', '>= 3.9.0'
  s.add_dependency 'rails', '~> 5.1.4'
end
