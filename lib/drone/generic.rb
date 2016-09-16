module GenericDrone

  class Drone

  	attr_accessor :name, :power, :position, :height, :speed

    def initialize (name, position)
      @name  			= name
      @power 			= 100
      @position		= position
      @height			= 0
      @speed			= 0
    end

    def move (speed, vector)
    	if "the way is safe" and "self.power - power_needed > power_to_return" 
    		puts "Yeah, lets go"
    	else
    		puts "Can't move"
    	end
    end

  end

end