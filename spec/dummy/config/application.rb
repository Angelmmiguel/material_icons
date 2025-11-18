require File.expand_path('../boot', __FILE__)

# Ruby 3.2+ compatibility: Logger is now a separate gem
require 'logger'

# Pick the frameworks you want:
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)
require 'material_icons'

module Dummy
  class Application < Rails::Application
    # Do not swallow errors in after_commit/after_rollback callbacks.
    #config.active_record.raise_in_transactional_callbacks = true
    config.encoding = "utf-8"
    config.assets.enabled = true
    config.assets.version = '1.0'
  end
end
