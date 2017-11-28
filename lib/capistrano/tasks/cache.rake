namespace :cache do
  desc 'Clear a Rails.cache on an instance'
  task :clear do
    on roles(:app) do
      within current_path do
        execute :bundle, 'exec rails cache:clear'
      end
    end
  end
end
