require 'test_helper'
require 'minitest/autorun'

describe SpinaGraphql::Resolvers::PagesResolver do
  before do
    @resolver = SpinaGraphql::Resolvers::PagesResolver.new
  end

  describe 'when object is not present' do
    it 'returns all pages' do
      mock = MiniTest::Mock.new
      mock_args = MiniTest::Mock.new

      mock.expect(:call, nil)

      # args receives `nil` for some reason so we need to mock it:
      mock_args.expect(:nil, nil)

      Spina::Page.stub(:all, mock) do
        @resolver.call(nil, mock_args, nil)
      end

      mock.verify
    end
  end
end