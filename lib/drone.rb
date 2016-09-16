module MBDrones

	MY_CONST = "HGo"

	class Drone
		attr_accessor :name, :position, :height, :battery, :speed, :course

		def initialize(opts={})
			
			# Load the drone config file
			config = YAML::load_file(File.join(__dir__, 'drone_config.yml'))
			$LOG.debug "Creating drone with options: #{opts}"
			
			# Conditional assignments
			@name 			= opts[:name] 			|| config["name"]
			@position 	= opts[:position] 	|| config["home"]
			@height 		= opts[:height] 		|| config["height"]
			@baterry 		= opts[:battery] 		|| config["battery"]
			@speed 			= opts[:speed] 			|| config["speed"]
			@course			= opts[:course]			|| config["course"]

			$LOG.debug "Drone created: #{self.inspect}"
		end

		def turn_left(opts={})
			# target_course = @course.to_i - @change_angel.to_i
			
		end

		def turn_right(opts={})
			
		end

		def move_up(opts={})
			
		end

		def move_down(opts={})
			
		end

	end


	# Require all the top level files in drone/*.rb
	# Dir[File.dirname(__FILE__) + "drone/*.rb"].sort.each do |pn|
	#   puts pn
	#   require "drone/#{File.basename(pn, '.rb')}"
	# end
end