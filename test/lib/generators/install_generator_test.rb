require 'test_helper'
require 'generators/flowmor_analytics/install_generator'

class InstallGeneratorTest < Rails::Generators::TestCase
  tests FlowmorAnalytics::Generators::InstallGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  test "generator runs without errors" do
    assert_nothing_raised do
      run_generator
    end
  end
end
