class SpinaGraphql::Resolvers::PageByMaterializedPathResolver
  def call(obj, args, ctx)
    Spina::Page.find_by! materialized_path: args[:materialized_path]
  end
end
