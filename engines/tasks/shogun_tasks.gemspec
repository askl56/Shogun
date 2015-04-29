$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "shogun/tasks/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "shogun_tasks"
  s.version     = Shogun::Tasks::VERSION
  s.authors     = ["askl56"]
  s.email       = ["amscott@openmailbox.org"]
  s.homepage    = "http://cogentia.io"
  s.summary     = "Task feature for ShogunCRM"
  s.description = "Task feature for ShogunCRM"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency "deface"
  s.add_dependency "shogun_core"
  s.add_development_dependency "sqlite3"
end
