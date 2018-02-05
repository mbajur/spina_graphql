require 'spina'
require 'pg'
require 'mobility'

require_relative 'services'

module SpinaGraphql
  class Engine < ::Rails::Engine
    isolate_namespace SpinaGraphql
  end
end
