require 'test_helper'
require 'minitest/autorun'

describe SpinaGraphql::Resolvers::PagePartsResolver do
  before do
    @resolver = SpinaGraphql::Resolvers::PagePartsResolver.new
  end

  describe 'when object is present' do
    it 'returns page parts for object' do
      obj = MiniTest::Mock.new
      obj.expect :page_parts, nil
      @resolver.call(obj, nil, nil)

      obj.verify
    end
  end

  describe 'when object is not present' do
    it 'returns all page parts' do
      mock = MiniTest::Mock.new
      mock_args = MiniTest::Mock.new

      mock.expect(:call, nil)

      # args receives `nil` for some reason so we need to mock it:
      mock_args.expect(:nil, nil)

      Spina::PagePart.stub(:all, mock) do
        @resolver.call(nil, mock_args, nil)
      end

      mock.verify
    end
  end
end
