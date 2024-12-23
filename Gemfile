source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.2.2"

# Use mysql as the database for Active Record
gem "mysql2", "~> 0.5"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"

# Api json serializer
gem "jsonapi-serializer"

# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
gem "rack-cors"

# Environment variables
gem "dotenv-rails"

# Paginate
gem "pagy"

# Search
gem "ransack"

# Strip attribute before commit
gem "strip_attributes"

# Config common variables
gem "config"

# Docs API
gem "rswag"

# Request third party api
gem "httparty"

# Authentication
gem "devise"
gem "devise-jwt"
gem "oauth"

# background jobs
gem "sidekiq", "~> 6.5", ">= 6.5.7"
gem "sidekiq-status"

group :development, :test do
  # Debugging
  gem "pry-byebug"
  gem "pry-rails"

  # Convention
  gem "rubocop", require: false
  gem "rubocop-performance"
  gem "rubocop-rspec"
  gem "rubocop-rake"

  # Unit Test
  gem "rspec"
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem "database_cleaner"
  gem "faker", git: "https://github.com/faker-ruby/faker.git", branch: "main"
end

group :development do
  # Schema in model
  gem "annotate"
end

group :test do
  # Use system testing
  gem "shoulda-matchers", "~> 3.1"
  gem "simplecov", require: false
end
