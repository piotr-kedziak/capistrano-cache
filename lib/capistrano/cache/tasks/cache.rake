namespace :load do
  task :defaults do
    set :clear_cache_after_deploy, -> { true }
  end
end

namespace :deploy do
  after :publishing, :clear_cache do
    invoke 'cache:clear' if fetch(:clear_cache_after_deploy)
  end
end

namespace :cache do
  desc 'Clear a Rails.cache on an instance'
  task :clear do
    on roles(:app) do
      within current_path do
        execute :bundle, 'exec rails runner "Rails.cache.clear"'
      end
    end
  end
end
