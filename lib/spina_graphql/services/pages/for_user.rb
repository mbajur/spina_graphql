class SpinaGraphql::Services::Pages::ForUser
  def initialize(user: nil)
    @user = user
  end

  def call
    collection.includes(:translations)
  end

  private

  attr_reader :user

  def collection
    if user.present?
      Spina::Page
    else
      Spina::Page.active.live
    end
  end
end
