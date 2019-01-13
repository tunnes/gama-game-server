source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.1'
gem 'sass-rails', '~> 5.0'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'uglifier', '>= 1.3.0'

# CORS:
gem 'rack-cors', require: 'rack/cors'

# Database:
gem 'pg', '~> 0.21'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'

  # Linter
  gem 'rubocop'

  # Data
  gem 'factory_bot_rails'
  gem 'faker'

  # Coverage
  gem 'simplecov'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end
