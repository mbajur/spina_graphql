SpinaGraphql::Types::StructureItemType = GraphQL::ObjectType.define do
  name 'Spina_StructureItem'

  field :id, !types.ID

  field :content, SpinaGraphql::Types::ContentUnion do
    argument :key, !types.String

    resolve ->(obj, args, ctx) do
      obj.content(args[:key].to_sym)
    end
  end

  field :created_at, SpinaGraphql::Types::DateTimeType
  field :updated_at, SpinaGraphql::Types::DateTimeType
end
