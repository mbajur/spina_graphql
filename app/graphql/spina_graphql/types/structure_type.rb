SpinaGraphql::Types::StructureType = GraphQL::ObjectType.define do
  name 'Spina_Structure'

  field :id, !types.ID

  connection :structure_items, SpinaGraphql::Fields::StructureItemsField
end
