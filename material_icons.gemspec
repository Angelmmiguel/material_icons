require File.expand_path('../lib/material_icons/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'material_icons'
  s.version     = MaterialIcons::Rails::VERSION
  s.summary     = "A simple Rails wrapper of Google Material Icons"
  s.description = "Add Google Material Icons in your Rails projects easily. It is a library with +750 icons ;)"
  s.authors     = ["Angel M Miguel"]
  s.email       = 'angel@laux.es'
  s.files       = Dir["{app,lib}/**/*"] + %w(Rakefile LICENSE README.md)
  s.homepage    = 'https://laux.es'
  s.require_paths = ['lib']
  s.licenses     = ['MIT', 'Creative Common Attribution 4.0 International License']
end