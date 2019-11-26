class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []

  end


def bear_can_take_fish_from_river
  @river.all_fish.pop()
end


end
