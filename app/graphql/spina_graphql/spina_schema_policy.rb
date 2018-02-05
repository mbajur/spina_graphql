class SpinaGraphql::SpinaSchemaPolicy
  RULES = {
    SpinaGraphql::Types::QueryType => {
      '*': ->(obj, args, ctx) { true },
      pageById: ->(obj, args, ctx) { ctx[:current_spina_user].present? }
    },

    SpinaGraphql::Types::PageType => {
      '*':       ->(obj, args, ctx) { true },
      active:    ->(obj, args, ctx) { user_signed_in?(ctx) },
      deletable: ->(obj, args, ctx) { ctx[:current_spina_user].present? },
      draft:     ->(obj, args, ctx) { ctx[:current_spina_user].present? }
    },
  }

  def self.guard(type, field)
    RULES.dig(type, field)
  end

  def self.user_signed_in?(ctx)
    ctx[:current_spina_user].present?
  end
end
