source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.2'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'frontend-generators'
gem 'responders'
gem 'htmltoword'
gem 'caracal-rails'
gem 'bcrypt', '~> 3.1.7'
gem 'font-awesome-sass'
gem 'devise'
gem 'ratyrate'
gem "paperclip", "~> 5.0.0"
gem 'trix'
gem 'activeadmin'
gem 'active_skin'
gem 'cancancan', '~> 2.0'
gem 'aws-sdk', '~> 2'


group :development, :test do
  gem 'sqlite3' 
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


group :production do
  gem 'pg'
  gem 'rails_12factor'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
