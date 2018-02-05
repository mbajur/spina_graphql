$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spina_graphql/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spina_graphql"
  s.version     = SpinaGraphql::VERSION
  s.authors     = ["Michal Bajur"]
  s.email       = ["mbajur@gmail.com"]
  s.homepage    = "https://spinacms.com"
  s.summary     = "GraphQL plugin for Spina CMS"
  s.description = "GraphQL plugin for Spina CMS"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"
  s.add_dependency "graphql", "~> 1.7.9"
  s.add_dependency "spina", "~> 0.12.0"
  s.add_dependency "graphiql-rails"
  s.add_dependency 'mobility', '>= 0.3.6'

  s.add_development_dependency "minitest", "5.10.3"
  s.add_development_dependency 'factory_bot', '~> 4.0'
end
