# Capistrano::Cache
This Capistrano plugin is designed to clear a cache on your instance with Rails app.
capistrano-rails requires Capistrano 3.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'capistrano-cache'
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
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
