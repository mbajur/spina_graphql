require 'test_helper'
require 'minitest/autorun'

describe SpinaGraphql::Resolvers::NavigationItemsResolver do
  before do
    @resolver = SpinaGraphql::Resolvers::NavigationItemsResolver.new
  end

  describe 'when object is present' do
    it 'returns navigation items for object' do
      obj = MiniTest::Mock.new
      obj.expect :navigation_items, nil
      @resolver.call(obj, nil, nil)

      obj.verify
    end
  end

  describe 'when object is not present' do
    it 'returns all navigation items' do
      mock = MiniTest::Mock.new
      mock_args = MiniTest::Mock.new

      mock.expect(:call, nil)

      # args receives `nil` for some reason so we need to mock it:
      mock_args.expect(:nil, nil)

      Spina::NavigationItem.stub(:all, mock) do
        @resolver.call(nil, mock_args, nil)
      end

      mock.verify
    end
  end
end
