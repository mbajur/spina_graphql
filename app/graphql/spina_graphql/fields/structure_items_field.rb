SpinaGraphql::Fields::StructureItemsField = GraphQL::Field.define do
  name 'pages'
  type SpinaGraphql::Types::StructureItemType.connection_type

  resolve(SpinaGraphql::Resolvers::StructureItemsResolver.new)
end
