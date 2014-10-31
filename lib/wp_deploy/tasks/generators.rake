namespace :generate do
  desc "Generates a WordPress wp-config template"
  task :wp_config => :template_dir do
    FileUtils.cp(File.expand_path("../../templates/wp-config.php.erb", __FILE__), File.expand_path('wp-config.php.erb', project_template_dir) )
  end

  desc "Generates a htaccess template"
  task :htaccess => :template_dir do
    FileUtils.cp(File.expand_path("../../templates/.htaccess.erb", __FILE__), File.expand_path('.htaccess.erb', Rake.application.original_dir) )
  end

  desc "Generates a database config template"
  task :db_config do
    FileUtils.cp(File.expand_path("../../templates/database.yml", __FILE__), File.expand_path('config/database.yml', Rake.application.original_dir) )
  end

  desc "Generates the template directory"
  task :template_dir do
    Dir.mkdir(project_template_dir) unless File.exists?(project_template_dir)
  end
end

def project_template_dir
  File.expand_path('config/templates', Rake.application.original_dir)
end