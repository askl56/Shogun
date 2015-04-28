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

  s.test_files = Dir[""]
  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency 'sass-rails', "~> 5.0.1"
  s.add_dependency 'bootstrap-sass', "~> 3.3.3"
  s.add_dependency 'autoprefixer-rails', "~> 5.1.5"
  s.add_dependency 'devise', '~> 3.4.1'
  s.add_dependency 'cancan', '~> 1.6.10'

  s.add_development_dependency 'combustion', '~> 0.5.3'
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "faker"
  s.add_development_dependency "database_cleaner"
end
