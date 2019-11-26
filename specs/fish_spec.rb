require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')

class FishTest < MiniTest::Test


  def setup
    @fish1 = Fish.new("Steven", "Trout")
  end

  def test_fish_has_name()
    assert_equal("Steven", @fish1.name)
  end


end
