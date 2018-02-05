SpinaGraphql::Fields::NavigationsField = GraphQL::Field.define do
  name 'navigations'
  type SpinaGraphql::Types::NavigationType.connection_type

  resolve(SpinaGraphql::Resolvers::NavigationsResolver.new)
end
