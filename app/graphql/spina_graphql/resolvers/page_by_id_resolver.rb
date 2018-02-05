class SpinaGraphql::Resolvers::PageByIdResolver
  def call(obj, args, ctx)
    Spina::Page.find(args[:id])
  end
end
