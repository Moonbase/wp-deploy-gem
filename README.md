# wp_deploy gem

Ruby gem that provides Capistrano 3 and Rake tasks for the wp-deploy project. This gem is based on the `wp-deploy` project by Mixd.

## Installation

Add this line to your application's Gemfile, and the execute `bundle`:

    gem 'wp_deploy', :git => 'https://github.com/Moonbase/wp-deploy-gem.git'

Add this line to your application's Capfile:

    require 'wp_deploy'
    
If you want to load the built-in Rake tasks, add these lines to your application's Rakefile:

    # Load tasks from the gem
    require 'bundler'
    spec = Bundler.load.specs.find {|s| s.name == 'wp_deploy' }
    Dir.glob("#{spec.full_gem_path}/lib/wp_deploy/tasks/*.rake").each { |r| load r }
