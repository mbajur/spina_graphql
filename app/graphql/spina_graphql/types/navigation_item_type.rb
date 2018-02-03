SpinaGraphql::Types::NavigationItemType = GraphQL::ObjectType.define do
  name 'Spina_NavigationType'

  field :id, !types.ID
  field :page_id, types.ID
  field :navigation_id, types.ID
  field :position, types.Int
  field :ancestry, types.String

  field :created_at, SpinaGraphql::Types::DateTimeType
  field :updated_at, SpinaGraphql::Types::DateTimeType
end
