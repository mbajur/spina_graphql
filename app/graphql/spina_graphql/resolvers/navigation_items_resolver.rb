class SpinaGraphql::Resolvers::NavigationItemsResolver
  def call(obj, args, ctx)
    col = obj ? obj.navigation_items : Spina::NavigationItem.all
    # col = ItemsForUserQuery.find_for(col, ctx[:user])

    # col = col.includes(:photos)

    # col = col.search_by_q(args[:query]) if args[:query].present?
    # col = col.order(args[:order]) if args[:order]

    col
  end
end
