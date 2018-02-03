class SpinaGraphql::Resolvers::PagePartsResolver
  def call(obj, args, ctx)
    col = obj ? obj.page_parts : Spina::PagePart.all
    # col = ItemsForUserQuery.find_for(col, ctx[:user])

    # col = col.includes(:photos)

    # col = col.search_by_q(args[:query]) if args[:query].present?
    # col = col.order(args[:order]) if args[:order]

    col
  end
end
