SpinaGraphql::Fields::PageByMaterializedPathField = GraphQL::Field.define do
  name 'pageByMaterializedPath'
  type SpinaGraphql::Types::PageType

  argument :materialized_path, !types.String

  resolve(SpinaGraphql::Resolvers::PageByMaterializedPathResolver.new)
end
