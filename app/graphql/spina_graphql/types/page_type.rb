SpinaGraphql::Types::PageType = GraphQL::ObjectType.define do
  name 'Spina_Page'

  field :id, !types.ID
  field :name, types.String
  field :description, types.String
  field :show_in_menu, types.Boolean
  field :slug, types.String
  field :deletable, types.Boolean
  field :skip_to_first_child, types.Boolean
  field :view_template, types.String
  field :layout_template, types.String
  field :draft, types.Boolean
  field :link_url, types.String
  field :ancestry, types.String
  field :position, types.Int
  field :active, types.Boolean

  field :content, SpinaGraphql::Types::ContentUnion do
    argument :key, !types.String

    resolve ->(obj, args, ctx) {
      obj.content(args[:key].to_sym)
    }
  end

  field :created_at, SpinaGraphql::Types::DateTimeType
  field :updated_at, SpinaGraphql::Types::DateTimeType

  connection :page_parts, SpinaGraphql::Fields::PagePartsField, max_page_size: 25
  connection :navigation_items, SpinaGraphql::Fields::NavigationItemsField, max_page_size: 25
  connection :navigations, SpinaGraphql::Fields::NavigationsField, max_page_size: 25
end
