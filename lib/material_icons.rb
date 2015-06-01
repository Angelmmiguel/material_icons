require 'material_icons/version'
# Only require if rails is available
require 'material_icons/engine' if defined?(::Rails)

#
# Base module. This module defines the configuration of the gem.
#
module MaterialIcons
  # Use unicode icons
  mattr_accessor :unicode
  @unicode = false

  # Use the config from an initializer
  def self.setup
    yield self
  end
end
