$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "shogun/contacts/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "shogun_contacts"
  s.version     = Shogun::Contacts::VERSION
  s.authors     = ["askl56"]
  s.email       = ["amscott@openmailbox.org"]
  s.homepage    = "cogentia.io"
  s.summary     = "Contact feature for ShogunCRM"
  s.description = "Contact feature for ShogunCRM"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency "shogun_core"
  s.add_dependency "deface", '~> 1.0.1'
end
