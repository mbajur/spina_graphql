require 'spina'
require 'pg'

module SpinaGraphql
  class Engine < ::Rails::Engine
    isolate_namespace SpinaGraphql
  end
end
