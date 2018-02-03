SpinaGraphql::Fields::NavigationsField = GraphQL::Field.define do
  name 'navigations'
  type SpinaGraphql::Types::NavigationType.connection_type

  # argument :order,      types.String,  'Order of lunches. Example: "created_at: desc"'
  # argument :with_photo, types.Boolean, 'Lunches with photo'
  # argument :upcoming,   types.Boolean, 'Upcoming lunches'
  # argument :past,       types.Boolean, 'Past lunches'
  # argument :day,        types.String,  'Lunches for that day'

  resolve(SpinaGraphql::Resolvers::NavigationsResolver.new)
end
