require 'sass-rails'
require 'bootstrap-sass'
require 'autoprefixer-rails'
require 'devise'
require 'cancan'

module Shogun
  module Core
    def self.available?(engine_name)
      Object.const_defined?("Shogung::#{engine_name.to_s.camelize}")
    end
  end
end
