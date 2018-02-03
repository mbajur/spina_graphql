SpinaGraphql::Types::PhotoCollectionType = GraphQL::ObjectType.define do
  name 'Spina_PhotoCollection'

  field :id, types.ID

  # field :value, types.String do
  #   resolve ->(obj, args, ctx) do
  #     obj.try(:html_safe)
  #   end
  # end

  connection :photos, SpinaGraphql::Types::PhotoType.connection_type
end
