SpinaGraphql::Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  connection :pages, SpinaGraphql::Fields::PagesField
  field :pageById, SpinaGraphql::Fields::PageByIdField, description: 'Find page by ID'
  field :pageByMaterializedPath, SpinaGraphql::Fields::PageByMaterializedPathField, description: 'Find page by materialized_path'
end
