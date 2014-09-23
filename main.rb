puts "loading stuff..."

require_relative "lib/town"
require_relative "lib/shop"
require_relative "lib/npc"
require_relative "lib/player"

puts "loaded stuff"

t = Town.new

t.name = "cocksburg"

t.shops << Shop.new
t.citizens << NPC.new

puts t
p = Player.new

p.name = "archibald the nifty"
p.gold = "about tree fity"
p.hp = "some"
puts p

begin
  puts "1) spend dosh\n2) talk to Shopkeep\n3) kill Shopkeep\n4) done"
  input = gets
  input = input.to_i

  if input == 1
    puts "Dosh expended"
  elsif input == 2
    puts "Buy stuff or fuck off"
  elsif input == 3
    puts "Ugh I'm dead and stuff"
  else
    puts "Fine, fuck off then"
  end
end while input != 0
