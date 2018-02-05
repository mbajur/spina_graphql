class SpinaGraphql::Resolvers::NavigationByNameResolver
  def call(_obj, args, ctx)
    Spina::Navigation.find_by!(name: args[:name])
  end
end
