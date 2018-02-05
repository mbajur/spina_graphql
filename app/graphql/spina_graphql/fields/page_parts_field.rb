SpinaGraphql::Fields::PagePartsField = GraphQL::Field.define do
  name 'page_parts'
  type SpinaGraphql::Types::PagePartType.connection_type

  resolve(SpinaGraphql::Resolvers::PagePartsResolver.new)
end
