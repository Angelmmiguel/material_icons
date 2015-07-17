require File.expand_path('../lib/material_icons/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'material_icons'
  s.version     = MaterialIcons::VERSION
  s.summary     = "A simple Rails wrapper for Google Material Icons"
  s.description = "Add Google Material Icons in your Rails projects easily. It is a library with +750 icons ;)"
  s.authors     = ["Angel M Miguel"]
  s.email       = 'angel@laux.es'
  s.files       = Dir["{app,lib}/**/*"] + %w(Rakefile LICENSE README.md)
  s.homepage    = 'https://laux.es'
  s.require_paths = ['lib']
  s.licenses     = ['MIT', 'Creative Common Attribution 4.0 International License']
  # Dependencies for testing
  s.add_development_dependency 'rails', '~> 4.2', '>= 4.2.0'
  s.add_development_dependency "sqlite3", ">= 1.3"
  s.add_development_dependency "rspec", ">= 3.2"
  s.add_development_dependency "rspec-rails" , ">= 3.2"
  s.add_development_dependency "capybara", ">= 2.4.4"
  s.add_development_dependency "coveralls", ">= 0.8.2"
end