require 'test_helper'
require 'minitest/autorun'

describe SpinaGraphql::Resolvers::PageByIdResolver do
  before do
    @page1 = create(:page, title: 'Page 1')
    @page2 = create(:page, title: 'Page 2')
    @resolver = SpinaGraphql::Resolvers::PageByIdResolver.new
  end

  it 'returns a page by ID' do
    res = @resolver.call(nil, { id: @page2.id }, {})

    assert_equal res.id, @page2.id
  end
end
