require 'test_helper'
require 'generators/migration_meta/migration_meta_generator'

class MigrationMetaGeneratorTest < Rails::Generators::TestCase
  tests MigrationMetaGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
