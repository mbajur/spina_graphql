class SpinaGraphql::Resolvers::PagesResolver
  def call(obj, args, ctx = {})
    serv = SpinaGraphql::Services::Pages::ForUser.new user: ctx[:current_spina_user]
    serv.call.all
  end
end
