plugin "launching-soon", :git => "git://github.com/vinsol/Launching-Soon.git"

# add 'include LaunchingSoon' to the application_controller
# UNIX only
run "sed -i '/^class/a \\\ \\\ include LaunchingSoon if Rails.env.production?' app/controllers/application_controller.rb"

route "map.root :controller => :application"  

rake "db:migrate:launching_soon",  :env => 'production'
