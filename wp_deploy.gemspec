# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "wp_deploy"
  spec.version       = "0.0.1"
  spec.authors       = ["Ward van Teijlingen"]
  spec.email         = ["w.van.teijlingen@gmail.com"]
  spec.summary       = %q{Gem that provides Capistrano 3 and Rake tasks for the wp-deploy project}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "capistrano", "~> 3.0"
end