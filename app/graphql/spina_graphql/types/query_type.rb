SpinaGraphql::Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  connection :pages, SpinaGraphql::Fields::PagesField, max_page_size: 25
  field :pageById, SpinaGraphql::Fields::PageByIdField
  field :pageByMaterializedPath, SpinaGraphql::Fields::PageByMaterializedPathField
end
