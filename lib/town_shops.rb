class TownShops
  attr_accessor :shops

  def initialize shops =[]
    @shops = shops
  end

  def run
    shop_loop while @input!=0
  end

  def shop_loop
    #puts "1) spend dosh\n2) talk to Shopkeep\n3) kill Shopkeep\n4) done"
    @shops.each_with_index do |shop, index|
      puts "#{index +1}) Enter #{shop.name}"
    end
    @input = gets
    @input = @input.to_i
    chosen_shop = @shops[@input-1]
    if chosen_shop
      chosen_shop.run
    else
      @input=0
    end
  end
end
