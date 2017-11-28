$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'capistrano/cache/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'capistrano-cache'
  s.version     = Capistrano::Cache::VERSION
  s.authors     = ['Piotr Kędziak']
  s.email       = ['piotr@kedziak.com']
  s.homepage    = ''
  s.summary     = 'Summary of Capistrano::Cache.'
  s.description = 'Description of Capistrano::Cache.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'capistrano', '>= 3.9.0'
  s.add_dependency 'rails', '~> 5.1.4'
end
