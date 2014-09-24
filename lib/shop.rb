class Shop
  attr_accessor :name

  def run
    shop_loop while @input!=0
  end

  def shop_loop
    puts "1) spend dosh\n2) talk to Shopkeep\n3) kill Shopkeep\n4) done"
    @input = gets
    @input = @input.to_i

    if @input == 1
      puts "Dosh expended"
    elsif @input == 2
      puts "Buy stuff or fuck off"
    elsif @input == 3
      puts "Ugh I'm dead and stuff"
    else
      puts "Fine, fuck off then"
    end
  end
end
