require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')
require_relative('../bear')

class BearTest < MiniTest::Test

  def setup
    @bear1 = Bear.new("Hunter", "Grizzly")
    @fish1 = Fish.new("Steven", "Trout")
    @fish2 = Fish.new("Jerry", "Cod")

    @all_fish = [@fish1, @fish2]
    @river = River.new("Amazon", @all_fish)

  end

  def test_bear_has_name
    assert_equal("Hunter", @bear1.name)
  end

  def test_bear_can_take_fish_from_river
    @bear1.bear_can_take_fish_from_river()
    assert_equal(1, @river.all_fish.length)
  end




end
