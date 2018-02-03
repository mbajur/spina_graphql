SpinaGraphql::Types::ContentUnion = GraphQL::UnionType.define do
  name 'Spina_ContentUnion'

  possible_types [
    SpinaGraphql::Types::StructureType,
    SpinaGraphql::Types::TextType,
    SpinaGraphql::Types::PhotoType
  ]
end
