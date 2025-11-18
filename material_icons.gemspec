require File.expand_path('../lib/material_icons/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'material_icons'
  s.version     = MaterialIcons::VERSION
  s.summary     = 'A simple Rails wrapper for Google Material Icons'
  s.description = 'Add Google Material Icons in your Rails projects easily. It is a library with +2500 icons ;)'
  s.authors     = ['Angel M Miguel']
  s.email       = 'hi@angel.kiwi'
  s.files       = Dir['{app,lib}/**/*'] + %w(LICENSE README.md LICENSE_OF_FONTS)
  s.homepage    = 'https://github.com/Angelmmiguel/material_icons'
  s.require_paths = ['lib']
  s.licenses     = ['MIT', 'Apache-2.0']

  # Basic dependency
  s.add_dependency 'railties', '>= 3.2'

  # Dependencies for testing
  s.add_development_dependency 'sqlite3', '~> 1.4'
  s.add_development_dependency 'rspec', '~> 3.2'
  s.add_development_dependency 'rspec-rails', '~> 3.0'
  s.add_development_dependency 'capybara', '~> 2.4.4'
  s.add_development_dependency 'pry', '~> 0.10.3'
  s.add_development_dependency 'pry-nav', '~> 0.2.4'
  s.add_development_dependency 'tzinfo-data'
end
