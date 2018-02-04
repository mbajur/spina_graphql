class SpinaGraphql::Resolvers::NavigationsResolver
  def call(obj, args, ctx)
    obj ? obj.navigations : Spina::Navigation.all
  end
end
