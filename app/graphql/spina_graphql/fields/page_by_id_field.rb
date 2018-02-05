SpinaGraphql::Fields::PageByIdField = GraphQL::Field.define do
  name 'pageById'
  type SpinaGraphql::Types::PageType

  argument :id, !types.ID

  resolve(SpinaGraphql::Resolvers::PageByIdResolver.new)
end
