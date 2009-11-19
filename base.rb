#if yes?("Do you want to use RSpec for testing?")
gem "rspec",       :lib => false, :version => ">= 1.2.9",  :environment => :test
gem "rspec-rails", :lib => false, :version => ">= 1.2.9",  :environment => :test
gem "cucumber",    :lib => false, :version => ">=0.3.11",  :environment => :test
gem "webrat",      :lib => false, :version => ">=0.4.4",   :environment => :test
gem "thoughtbot-factory_girl", :lib => "factory_girl", :source => "http://gems.github.com", :environment => :test

generate :rspec
generate :cucumber

#end

generate :nifty_layout

git :init

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
