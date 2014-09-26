class Town
  attr_accessor :name, :citizens, :shops

  def initialize citizens =[], shops =[]
    self.citizens=Citizens.new(citizens)
    self.shops=TownShops.new(shops)
  end

  def run
    begin
      puts "1) Check shops\n2) Talk to Folk"

      #puts "1) spend dosh\n2) talk to Shopkeep\n3) kill Shopkeep\n4) done"
      # @shops.each_with_index do |shop, index|
      #   puts "#{index}) Enter #{shop.name}"
      # end
      @input = gets
      @input = @input.to_i
      # chosen_shop = @shops[@input-1]
      if @input == 1
        self.shops.run
      elsif @input == 2
        self.citizens.run
      else
        @input=0
      end
    end while @input != 0
  end

  def to_s
    "name: #{name}"
  end

end
