SpinaGraphql::SpinaSchema = GraphQL::Schema.define do
  resolve_type ->(type, obj, ctx) do
    case obj.class.name
    when 'Spina::Structure'
      return SpinaGraphql::Types::StructureType
    when 'Spina::Photo'
      return SpinaGraphql::Types::PhotoType
    else
      return SpinaGraphql::Types::TextType
    end
  end

  mutation(SpinaGraphql::Types::MutationType)
  query(SpinaGraphql::Types::QueryType)
end
