class Town
  attr_accessor :name, :citizens, :shops

  def initialize
    self.citizens=[]
    self.shops=[]
  end

  def to_s
    "name: #{name}\npopulation: #{population}\nshops: #{shops}"
  end

  def population
    citizens.size
  end

end
