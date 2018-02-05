class SpinaGraphql::Resolvers::PageByIdResolver
  def call(obj, args, ctx)
    serv = SpinaGraphql::Services::Pages::ForUser.new user: ctx[:current_spina_user]
    serv.call.find(args[:id])
  end
end
