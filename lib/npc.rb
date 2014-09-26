class NPC
  attr_accessor :name

  def initialize npc_dialog
    self.name = npc_dialog[:name]
    @npcresponses = npc_dialog[:responses]
    @dialog_options = npc_dialog[:dialog]
  end

  def run
    npc_loop while @input!=0
  end

  def npc_loop
    puts @dialog_options.join("\n")
    @input = gets
    @input = @input.to_i
    chosen_response = @npcresponses[@input-1]
    if chosen_response
      puts chosen_response
    else
      puts @npcresponses.last
      @input=0
    end
  end
end
