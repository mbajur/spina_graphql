SpinaGraphql::Fields::NavigationItemsField = GraphQL::Field.define do
  name 'navigation_items'
  type SpinaGraphql::Types::NavigationItemType.connection_type

  resolve(SpinaGraphql::Resolvers::NavigationItemsResolver.new)
end
