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

t.run
