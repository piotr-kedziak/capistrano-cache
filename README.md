# Capistrano::Cache
This Capistrano plugin is designed to clear a cache on your instance with Rails app.
capistrano-rails requires Capistrano 3.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'capistrano-cache', require: false
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install capistrano-cache
```

And add that line to your `Capfile`:
```ruby
require 'capistrano/cache'
```

By default, a cache will be cleared on an `:app` role so please add it to your Capistrano environment config file for ex:

```ruby
server 'deployer@127.0.0.1',
       user:        'deployer',
       roles:       %w[app db web]
```

## Usage
After installation, you can run a Capistrano task on any of yours environments stages:
```bash
cap production cache:clear
```

## Hooks
This gem will, by default add a hook to run a `cache:clear` task after each deploy.
You can change this behaviour by adding this line to your `deploy.rb` file:
```ruby
set :clear_cache_after_deploy, true # by default or false
```

## Contributing
1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
