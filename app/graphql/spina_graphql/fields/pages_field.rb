SpinaGraphql::Fields::PagesField = GraphQL::Field.define do
  name 'pages'
  type SpinaGraphql::Types::PageType.connection_type

  # argument :order,      types.String,  'Order of pages. Example: "created_at desc"'
  # argument :with_photo, types.Boolean, 'Lunches with photo'
  # argument :upcoming,   types.Boolean, 'Upcoming lunches'
  # argument :past,       types.Boolean, 'Past lunches'
  # argument :day,        types.String,  'Lunches for that day'
  argument :page_filters, types.String, 'Filter by page attributes. Eg. `id:4|name:homepage`'

  resolve(SpinaGraphql::Resolvers::PagesResolver.new)
end
