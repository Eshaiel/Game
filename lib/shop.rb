class Shop
  attr_accessor :name

  def initialize shop_options
    self.name =shop_options[:name]
    @responses = shop_options[:responses]
    @dialog = shop_options[:dialog]
  end

  def run
    puts "Welcome to #{name}"
    shop_loop while @input!=0
  end

  def shop_loop
    #puts "1) spend dosh\n2) talk to Shopkeep\n3) kill Shopkeep\n4) done"
    puts @dialog.join("\n")
    @input = gets
    @input = @input.to_i
    puts @responses[@input-1] || @responses.last
    if @input > 3 || @input < 0
      @input=0
    end
  end
end
