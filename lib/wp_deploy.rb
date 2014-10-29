require 'capistrano/git'
require "wp_deploy/submodule_strategy"

load File.expand_path("../wp_deploy/tasks/cache.cap", __FILE__)
load File.expand_path("../wp_deploy/tasks/content.cap", __FILE__)
load File.expand_path("../wp_deploy/tasks/db.cap", __FILE__)
load File.expand_path("../wp_deploy/tasks/wp.cap", __FILE__)
load File.expand_path("../wp_deploy/tasks/arie.rake", __FILE__)