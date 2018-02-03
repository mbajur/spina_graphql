class SpinaGraphql::Resolvers::PagesResolver
  PAGE_FILTERS_ATTRIBUTES = %w[id name].freeze

  def call(obj, args, ctx)
    @args = args

    col = Spina::Page.all

    col = col.where(page_filters)
  end

  private

  attr_reader :args

  def page_filters
    filters = {}

    facets = args[:page_filters].split('|')
    facets.each do |f|
      parts = f.split(':')
      next unless PAGE_FILTERS_ATTRIBUTES.include? parts[0]

      filters[parts[0]] = parts[1]
    end

    Rails.logger.debug "Page filters: #{filters}"

    filters
  end
end
