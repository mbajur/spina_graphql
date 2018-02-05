require 'test_helper'
require 'minitest/autorun'

describe SpinaGraphql::Resolvers::PageByMaterializedPathResolver do
  before do
    @page1 = create(:page, title: 'Page 1')
    @page2 = create(:page, title: 'Page 2')
    @resolver = SpinaGraphql::Resolvers::PageByMaterializedPathResolver.new
  end

  it 'returns a page by materialized path' do
    res = @resolver.call(nil, { materialized_path: @page2.materialized_path }, {})

    assert_equal res.id, @page2.id
  end
end
