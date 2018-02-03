SpinaGraphql::Fields::PagePartsField = GraphQL::Field.define do
  name 'page_parts'
  type SpinaGraphql::Types::PagePartType.connection_type

  # argument :order,      types.String,  'Order of lunches. Example: "created_at: desc"'
  # argument :with_photo, types.Boolean, 'Lunches with photo'
  # argument :upcoming,   types.Boolean, 'Upcoming lunches'
  # argument :past,       types.Boolean, 'Past lunches'
  # argument :day,        types.String,  'Lunches for that day'

  resolve(SpinaGraphql::Resolvers::PagePartsResolver.new)
end
