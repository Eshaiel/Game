puts "loading stuff..."

require_relative "lib/town"
require_relative "lib/shop"
require_relative "lib/npc"
require_relative "lib/player"

puts "loaded stuff"

t = Town.new

t.name = "cocksburg"

t.shops << Shop.new({
  dialog: ["1) spend dosh", "2) talk to Shopkeep", "3) kill Shopkeep", "4) done"],
  responses: ["Dosh expended","Buy stuff or fuck off","Ugh I'm dead and stuff","Fine, fuck off then"],
  name: "Cock's Bounty"
})
t.citizens << NPC.new

puts t
p = Player.new

p.name = "archibald the nifty"
p.gold = "about tree fity"
p.hp = "some"
puts p

t.run
