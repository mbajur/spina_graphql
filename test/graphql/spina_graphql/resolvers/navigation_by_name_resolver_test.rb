require 'test_helper'
require 'minitest/autorun'

describe SpinaGraphql::Resolvers::NavigationByNameResolver do
  before do
    @nav1 = create(:navigation, label: 'Navigation 1', name: 'nav2')
    @nav2 = create(:navigation, label: 'Navigation 1', name: 'nav1')
    @resolver = SpinaGraphql::Resolvers::NavigationByNameResolver.new
  end

  it 'returns a navigation by name' do
    res = @resolver.call(nil, { name: @nav2.name }, {})

    assert_equal res.id, @nav2.id
  end
end
