namespace :cache do
  desc 'Clear a cache'
  task clear: :environment do
    Rails.cache.clear
  end
end
