source "https://rubygems.org"
gemspec

rails_version = ENV["RAILS_VERSION"] || "default"

# Get rails version to test
rails = case rails_version
        when "default"
          ">= 4.2.0"
        else
          "~> #{rails_version}"
        end

gem "rails", rails
gem 'test-unit'