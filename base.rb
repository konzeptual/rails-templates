#if yes?("Do you want to use RSpec for testing?")

with_options :environment => :test, :lib => false do |config|
  config.gem "rspec",       :version => ">= 1.2.9"
  config.gem "rspec-rails", :version => ">= 1.2.9"
  config.gem "cucumber",    :version => ">=0.3.11"
  config.gem "webrat",      :version => ">=0.4.4"
  config.gem "thoughtbot-factory_girl", :lib => "factory_girl", :source => "http://gems.github.com", :environment => :test
end


generate :rspec
generate :cucumber

#end

generate :nifty_layout

git :init

run 'touch spec/factories.rb'
run "touch tmp/.gitignore log/.gitignore vendor/.gitignore db/.gitignore"
run "cp config/database.yml config/database.yml.sample"

file ".gitignore", <<-END
log/*.log
tmp/**/*
config/database.yml
db/*.sqlite3
END

git :add => "."
git :commit => "-m 'initial commit'"
