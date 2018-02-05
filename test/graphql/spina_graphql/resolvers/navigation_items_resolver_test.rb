require 'test_helper'
require 'minitest/autorun'

describe SpinaGraphql::Resolvers::NavigationItemsResolver do
  before do
    @resolver = SpinaGraphql::Resolvers::NavigationItemsResolver.new
    create(:navigation, label: 'Navigation 1', name: 'nav1')
    create(:navigation, label: 'Navigation 2', name: 'nav2')
  end

  describe 'when object is not present' do
    it 'returns all navigation items' do
      navigations = @resolver.call(nil, {})

      assert_equal Spina::NavigationItem.all.map(&:id), navigations.map(&:id)
    end
  end
end
