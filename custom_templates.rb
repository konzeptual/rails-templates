def path_to_template(template_name)
  "http://github.com/krick/rails-templates/raw/master/#{template_name}.rb"

end

load_template path_to_template('base')
load_template path_to_template('authentication')
