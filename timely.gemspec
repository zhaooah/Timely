$:.push File.expand_path("../lib", __FILE__)


# Maintain your gem's version:
require "timely/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "timely"
  s.version     = Timely::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Timely."
  s.description = "TODO: Description of Timely."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.4"

  s.add_development_dependency "sqlite3"

  #Full calendar
  s.add_dependency 'fullcalendar_engine'

end
