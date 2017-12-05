class Planets

	attr_accessor :size, :x, :y, :x_vel, :y_vel, :image

	def initialize(file_name, window)
		@window = window
		mass = []
		x = []
		y = []
		x_vel = []
		y_vel = []
		image = []
		
		File.open("simulations/#{file_name}").each do |line|
			info = line.split(" ")
			x.push(info[0].to_f)
			y.push(info[1].to_f)
			x_vel.push(info[2].to_f)
			y_vel.push(info[3].to_f)
			mass.push(info[4].to_f)
			image.push(info[5].to_s.strip)
		end
		@size_of_universe = x[1]
		@nbr_of_planets = x.first
		@x = x.drop(2)
		@y = y.drop(2)
		@x_vel = x_vel.drop(2)
		@y_vel = y_vel.drop(2)
		@image = image.drop(2)
		@mass = mass.drop(2)
		@ratio = (@size_of_universe / (window.width / 2))
	end

	def update
		
	end

	def draw
		@image.each_with_index do |planet, i|
			picture = Gosu::Image.new("images/#{planet}")
			picture.draw(x[i] / @ratio, y[i] / @ratio, 1)
		end
	end

end