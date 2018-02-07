require 'test_helper'
require 'minitest/autorun'

describe SpinaGraphql::Resolvers::NavigationByIdResolver do
  before do
    @nav1 = create(:navigation, label: 'Navigation 1', name: 'nav2')
    @nav2 = create(:navigation, label: 'Navigation 1', name: 'nav1')
    @resolver = SpinaGraphql::Resolvers::NavigationByIdResolver.new
  end

  it 'returns a navigation by name' do
    res = @resolver.call(nil, { id: @nav2.id }, {})

    assert_equal res.id, @nav2.id
  end
end
