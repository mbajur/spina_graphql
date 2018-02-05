require 'test_helper'
require 'minitest/autorun'

describe SpinaGraphql::Resolvers::PagesResolver do
  before do
    @resolver = SpinaGraphql::Resolvers::PagesResolver.new
    create(:page, title: 'Page 1')
    create(:page, title: 'Page 2')
  end

  describe 'when object is not present' do
    it 'returns all pages' do
      pages = @resolver.call(nil, {})

      assert_equal Spina::Page.all.map(&:id), pages.map(&:id)
    end
  end
end
