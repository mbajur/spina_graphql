class SpinaGraphql::Resolvers::PagesResolver
  def call(obj, args, ctx)
    Spina::Page.all
  end
end
