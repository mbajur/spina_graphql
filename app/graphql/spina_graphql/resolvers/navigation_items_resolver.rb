class SpinaGraphql::Resolvers::NavigationItemsResolver
  def call(obj, args = {}, ctx = {})
    obj ? obj.navigation_items : Spina::NavigationItem.all
  end
end
