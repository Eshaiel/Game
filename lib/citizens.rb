class Citizens
  attr_accessor :citizens

  def initialize citizens =[]
    @citizens = citizens
  end

  def run
    citizen_loop while @input!=0
  end

  def citizen_loop
    #puts "1) spend dosh\n2) talk to citizenkeep\n3) kill citizenkeep\n4) done"
    @citizens.each_with_index do |citizen, index|
      puts "#{index +1}) Talk to #{citizen.name}"
    end
    @input = gets
    @input = @input.to_i
    chosen_citizen = @citizens[@input-1]
    if chosen_citizen
      chosen_citizen.run
    else
      @input=0
    end
  end
end

