require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')
require_relative('../bear')


class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Steven", "Trout")
    @fish2 = Fish.new("Jerry", "Cod")

    @all_fish = [@fish1, @fish2]
    @river = River.new("Amazon", @all_fish)

  end

  def test_river_has_name()
    assert_equal("Amazon", @river.name)
  end

  def test_total_fish_in_river()
    assert_equal(2, @river.all_fish.length)
  end



end
