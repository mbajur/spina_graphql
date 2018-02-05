require 'spina'
require 'pg'
require 'mobility'

module SpinaGraphql
  class Engine < ::Rails::Engine
    isolate_namespace SpinaGraphql
  end
end
