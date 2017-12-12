class PlanetBodies
	
	def initialize(x, y, x_vel, y_vel, mass, image)
		@x, @y, @x_vel, @y_vel, @mass, @image = x, y, x_vel, y_vel, mass, image
	end

	def update
		
	end

	def draw(ratio)
		picture = Gosu::Image.new("images/#{@image}")
		puts @image
		picture.draw_rot((@x/ ratio) + 320, (@y / ratio) + 320, 0, 0.0)
	end

end