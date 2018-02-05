class SpinaGraphql::Resolvers::PageByMaterializedPathResolver
  def call(obj, args, ctx)
    serv = SpinaGraphql::Services::Pages::ForUser.new user: ctx[:current_spina_user]

    serv.call
        .find_by! materialized_path: args[:materialized_path]
  end
end
