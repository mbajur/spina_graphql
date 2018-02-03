SpinaGraphql::Types::DateTimeType = GraphQL::ScalarType.define do
  name 'DateTime'

  coerce_input  -> (x) { x }
  coerce_result -> (x) { x.try(:iso8601) }
end
