SpinaGraphql::Types::PhotoType = GraphQL::ObjectType.define do
  name 'Spina_Photo'

  field :url, types.String do
    resolve ->(obj, args, ctx) do
      obj.file.url
    end
  end
end
