task :prepare do
  system 'rm -rf .git'
  system 'git init'
  system 'rm -rf wordpress'
  system 'git submodule add -b 4.0-branch https://github.com/WordPress/WordPress.git wordpress'
  system 'git remote rm origin'
  system 'git add -A'
  system 'git commit -m "Inital commit"'
end