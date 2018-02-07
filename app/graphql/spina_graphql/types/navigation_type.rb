SpinaGraphql::Types::NavigationType = GraphQL::ObjectType.define do
  name 'Spina_Navigation'

  field :id, !types.ID
  field :name, types.String
  field :label, types.String
  field :auto_add_pages, types.Boolean
  field :position, types.Int

  field :created_at, SpinaGraphql::Types::DateTimeType
  field :updated_at, SpinaGraphql::Types::DateTimeType

  connection :navigation_items, SpinaGraphql::Fields::NavigationItemsField
end
