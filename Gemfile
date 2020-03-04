source 'https://rubygems.org'

ruby '2.5.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails'                  , '~> 5.1.4'
gem 'puma'                   , '~> 3.12'
gem 'sass-rails'             , '~> 5.0'
gem 'uglifier'               , '>= 1.3.0'

gem 'coffee-rails'           , '~> 4.2'
gem 'turbolinks'             , '~> 5'
gem 'jquery-rails'           , '~> 4.3.1'

gem 'slim-rails'             , '~> 3.1.3'
gem 'bootstrap'              , '~> 4.0.0'
gem 'simple_form'            , '~> 3.5.0'
gem 'jquery-countdown-rails' , '~> 2.0.2'

gem 'responders'             , '~> 2.4.0'
gem 'validate_url'           , '~> 1.0.2'

group :development, :test do
  gem 'sqlite3'               , '~> 1.3.11'
  gem 'rspec-rails'           , '~> 3.7'
  gem 'spring'
  gem 'spring-watcher-listen' , '~> 2.0.0'
  gem 'factory_bot_rails'
end

group :development do
  gem 'web-console' , '>= 3.3.0'
  gem 'listen'      , '>= 3.0.5'  , '< 3.2'
  gem 'bullet'      , '~> 5.7.2'
  gem 'rubocop'     , '~> 0.52.1' , require: false
end

group :test do
  gem 'shoulda-matchers' , '~> 3.1'    , require: false
  gem 'database_cleaner' , '~> 1.6.2'
  gem 'cucumber-rails'   , '~> 1.5.0'  , require: false
  gem 'capybara'         , '~> 2.13'
  gem 'poltergeist'      , '~> 1.17.0'
  gem 'simplecov'        , '0.14.1'    , require: false
end

group :production do
  gem 'pg'             , '~> 0.18.4'
  gem 'rails_12factor' , '~> 0.0.2'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
