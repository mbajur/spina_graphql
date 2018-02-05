SpinaGraphql::Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  connection :pages, SpinaGraphql::Fields::PagesField
  connection :navigations, SpinaGraphql::Fields::NavigationsField

  field :pageById, SpinaGraphql::Fields::PageByIdField, description: 'Find page by ID'
  field :pageByMaterializedPath, SpinaGraphql::Fields::PageByMaterializedPathField, description: 'Find page by materialized_path'

  field :navigationById, SpinaGraphql::Fields::NavigationByIdField, description: 'Find navigation by ID'
  field :navigationByName, SpinaGraphql::Fields::NavigationByNameField, description: 'Find navigation by name'
end
