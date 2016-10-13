require 'test_helper'
require 'generators/step/step_generator'

class StepGeneratorTest < Rails::Generators::TestCase
  tests StepGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
