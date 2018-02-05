SpinaGraphql::Fields::NavigationByIdField = GraphQL::Field.define do
  name 'navigationById'
  type SpinaGraphql::Types::NavigationType

  argument :id, !types.ID

  resolve(SpinaGraphql::Resolvers::NavigationByIdResolver.new)
end
