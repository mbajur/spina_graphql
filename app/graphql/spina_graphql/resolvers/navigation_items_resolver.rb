class SpinaGraphql::Resolvers::NavigationItemsResolver
  def call(obj, args = {}, ctx = {})
    @obj = obj

    res = collection.includes(:page, page: :translations)
  end

  private

  attr_reader :obj

  def collection
    obj ? obj.navigation_items : Spina::NavigationItem.all
  end
end
