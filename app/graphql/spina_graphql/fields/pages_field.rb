SpinaGraphql::Fields::PagesField = GraphQL::Field.define do
  name 'pages'
  type SpinaGraphql::Types::PageType.connection_type

  resolve(SpinaGraphql::Resolvers::PagesResolver.new)
end
