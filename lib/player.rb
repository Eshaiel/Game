class Player
  attr_accessor :name, :gold, :hp

  def to_s
    "name: #{name}\ngold: #{gold}\nhp: #{hp}"
  end
end
