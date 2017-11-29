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

## Usage
After installation, you can run a Capistrano task on any of yours environments stages:
```bash
cap production cache:clear
```

## Contributing
1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
