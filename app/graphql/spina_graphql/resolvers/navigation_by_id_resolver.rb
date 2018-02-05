class SpinaGraphql::Resolvers::NavigationByIdResolver
  def call(_obj, args, ctx)
    Spina::Navigation.find args[:id]
  end
end
