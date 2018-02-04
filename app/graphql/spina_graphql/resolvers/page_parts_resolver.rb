class SpinaGraphql::Resolvers::PagePartsResolver
  def call(obj, args, ctx)
    obj ? obj.page_parts : Spina::PagePart.all
  end
end
