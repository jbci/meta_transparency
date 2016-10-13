require 'test_helper'
require 'generators/scaffold_meta/scaffold_meta_generator'

class ScaffoldMetaGeneratorTest < Rails::Generators::TestCase
  tests ScaffoldMetaGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
