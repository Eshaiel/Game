puts "loading stuff..."

require_relative "lib/town"
require_relative "lib/shop"
require_relative "lib/npc"
require_relative "lib/player"
require_relative "lib/town_shops"
require_relative "lib/citizens"

puts "loaded stuff"


shop = Shop.new({
  dialog: ["1) spend dosh", "2) talk to Shopkeep", "3) kill Shopkeep", "4) done"],
  responses: ["Dosh expended","Buy stuff or fuck off","Ugh I'm dead and stuff","Fine, fuck off then"],
  name: "Cock's Bounty"
})
citizens = NPC.new({
  dialog: ["1) Who the fuck are you?", "2)Why won't you leave me alone", "3) Go away"],
  responses: ["My name's Timmy", "I just want to be your friend", "Fine! I guess I'll just kill myself like Daddy said!"],
  name: "Fucking Timmy"
})

t = Town.new([citizens], [shop])

t.name = "cocksburg"

puts t
p = Player.new

p.name = "archibald the nifty"
p.gold = "about tree fity"
p.hp = "some"
puts p

t.run
