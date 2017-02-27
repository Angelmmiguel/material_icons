require File.expand_path('../lib/material_icons/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'material_icons'
  s.version     = MaterialIcons::VERSION
  s.summary     = 'A simple Rails wrapper for Google Material Icons'
  s.description = 'Add Google Material Icons in your Rails projects easily. It is a library with +900 icons ;)'
  s.authors     = ['Angel M Miguel']
  s.email       = 'angel@laux.es'
  s.files       = Dir['{app,lib}/**/*'] + %w(Rakefile LICENSE README.md LICENSE_OF_FONTS)
  s.homepage    = 'http://irb.rocks'
  s.require_paths = ['lib']
  s.licenses     = ['MIT', 'Apache-2.0']

  # Basic dependency
  s.add_dependency 'railties', '>= 3.2'

  # Dependencies for testing
  s.add_development_dependency 'sqlite3', '~> 1.3'
  s.add_development_dependency 'rspec', '~> 3.2'
  s.add_development_dependency 'rspec-rails', '~> 3.0'
  s.add_development_dependency 'capybara', '~> 2.4.4'
  s.add_development_dependency 'coveralls', '~> 0.8.2'
  s.add_development_dependency 'pry', '~> 0.10.3'
  s.add_development_dependency 'pry-nav', '~> 0.2.4'
end
