require 'test_helper'
require 'minitest/autorun'
require 'graphql/guard/testing'

describe SpinaGraphql::SpinaSchemaPolicy do
  before do
    @policy = SpinaGraphql::SpinaSchemaPolicy
  end

  describe 'Query.pageById' do
    it 'when user is not present, returns false' do
      page = SpinaGraphql::Types::QueryType.field_with_guard('pageById', @policy)
      result = page.guard(nil, nil, {})

      assert_equal false, result
    end

    it 'when user is present, returns true' do
      page = SpinaGraphql::Types::QueryType.field_with_guard('pageById', @policy)
      result = page.guard(nil, nil, current_spina_user: Spina::User.new)

      assert_equal true, result
    end
  end

  describe 'Spina_Page.active' do
    it 'when user is not present, returns false' do
      page = SpinaGraphql::Types::PageType.field_with_guard('active', @policy)
      result = page.guard(nil, nil, {})

      assert_equal false, result
    end
  end

  describe 'Spina_Page.deletable' do
    it 'when user is not present, returns false' do
      page = SpinaGraphql::Types::PageType.field_with_guard('deletable', @policy)
      result = page.guard(nil, nil, {})

      assert_equal false, result
    end
  end

  describe 'Spina_Page.draft' do
    it 'when user is not present, returns false' do
      page = SpinaGraphql::Types::PageType.field_with_guard('draft', @policy)
      result = page.guard(nil, nil, {})

      assert_equal false, result
    end
  end
end
