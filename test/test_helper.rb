require File.expand_path("../../test/dummy/config/environment.rb", __FILE__)
ActiveRecord::Migrator.migrations_paths = [File.expand_path("../../test/dummy/db/migrate", __FILE__)]
ActiveRecord::Migrator.migrations_paths << File.expand_path('../../db/migrate', __FILE__)
require "rails/test_help"
require 'factory_bot'

# Filter out Minitest backtrace while allowing backtrace from other libraries
# to be shown.
Minitest.backtrace_filter = Minitest::BacktraceFilter.new

FactoryBot.find_definitions

module AroundEachTest
  def before_setup
    super
    Spina::Page.delete_all
    Spina::PageTranslation.delete_all
  end
end

class Minitest::Test
  include FactoryBot::Syntax::Methods
  include AroundEachTest
end
