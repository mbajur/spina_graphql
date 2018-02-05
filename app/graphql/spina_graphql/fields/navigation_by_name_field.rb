SpinaGraphql::Fields::NavigationByNameField = GraphQL::Field.define do
  name 'navigationByName'
  type SpinaGraphql::Types::NavigationType

  argument :name, !types.String

  resolve(SpinaGraphql::Resolvers::NavigationByNameResolver.new)
end
