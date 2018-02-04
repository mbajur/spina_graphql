class SpinaGraphql::Resolvers::StructureItemsResolver
  def call(obj, args, ctx)
    obj ? obj.structure_items : Spina::StructureItem.all
  end
end
