source 'http://ruby.taobao.org'

gem 'rails', '3.2.12'
gem 'bootstrap-sass', '~> 2.3.1.0'
gem 'bcrypt-ruby'
gem 'flat-ui-rails'
gem 'faker'  #可以使用办真实的名字和 Email 地址创建示例用户。
gem 'will_paginate' #实现分页
gem 'bootstrap-will_paginate' #设置 will_paginate 使用 Bootstrap 中的分页样式
gem 'slim'
gem 'thin'
group :development, :test do
  gem 'sqlite3', '1.3.5'
  gem 'rspec-rails', '2.11.0'
  gem 'guard-rspec', '1.2.1'
  gem 'guard-spork', '1.2.0'
  gem 'spork', '0.9.2'
  gem 'annotate'
  gem 'execjs'
  gem 'therubyracer'
  gem 'slim-rails'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.5'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
end

gem 'jquery-rails', '2.0.2'

group :test do
  gem 'capybara', '1.1.2'
  gem 'rb-fsevent', '0.9.1', :require => false
  gem 'growl', '1.0.3'
  gem 'factory_girl_rails'
end

group :production do
  gem 'pg', '0.12.2'
end
