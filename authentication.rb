load_template "http://github.com/caleb/rails-templates/raw/master/base.rb"

name = ask("What do you want a user to be called?")
generate :nifty_authentication, name, '--authlogic', '--rspec', '--haml'
rake "db:migrate"

git :add => "."
git :commit => "-m 'adding authentication'"
