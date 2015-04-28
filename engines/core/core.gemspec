$:.push File.expand_path("../lib", __FILE__)
require "shogun/core/version"

Gem::Specification.new do |s|
  s.name        = "shogun_core"
  s.version     = Shogun::Core::VERSION
  s.authors     = ["Andrew Scott"]
  s.email       = ["amscott@openmailbox.org"]
  s.homepage    = "http://cogentia.io"
  s.summary     = "Core features of Shogun"
  s.description = "Core features of Shogun"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
end
