SpinaGraphql::Types::PhotoCollectionType = GraphQL::ObjectType.define do
  name 'Spina_PhotoCollection'

  field :id, types.ID

  connection :photos, SpinaGraphql::Types::PhotoType.connection_type
end
