require "gosu"
require_relative "z_order"
require "./planets.rb"

class NbodySimulation < Gosu::Window

  def initialize
    super(640, 640, false)
    self.caption = "NBody simulation"
    @background_image = Gosu::Image.new("images/space.jpg", tileable: true)
    @file_name = ARGV.join(" ")
    @bodies = Planets.new(@file_name, self)
  end

  def update
    
  end

  def draw
    @background_image.draw(0, 0, ZOrder::Background)
    @bodies.draw
  end

  def button_down(id)
    close if id == Gosu::KbEscape
  end
  
end


window = NbodySimulation.new
window.show