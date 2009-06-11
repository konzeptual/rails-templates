if yes?("Do you want to use RSpec for testing?")
  gem "rspec"
  gem "rspec-rails"
  generate :rspec
end

generate :nifty_layout

git :init

run "touch tmp/.gitignore log/.gitignore vendor/.gitignore"
run "cp config/database.yml config/database.yml.sample"

file ".gitignore", <<-END
log/*.log
tmp/**/*
config/database.yml
db/*.sqlite3
END

git :add => "."
git :commit => "-m 'initial commit'"
