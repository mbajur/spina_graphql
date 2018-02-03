SpinaGraphql::Types::PagePartType = GraphQL::ObjectType.define do
  name 'Spina_PagePart'

  field :id, !types.ID
  field :title, types.String
  field :name, types.String
  field :page_id, types.ID
  field :page_partable_id, types.ID
  field :page_partable_type, types.String

  field :created_at, SpinaGraphql::Types::DateTimeType
  field :updated_at, SpinaGraphql::Types::DateTimeType
end
