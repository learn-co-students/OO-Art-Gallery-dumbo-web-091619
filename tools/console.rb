require_relative '../config/environment.rb'

vincent = Artist.new('vincent', 65)
bubbles = Artist.new('bubbles', 3)
leo = Artist.new('leo', 7)
john = Artist.new('john', 5)

ny = Gallery.new('nice place', 'new york')
paris = Gallery.new('fancy place', 'paris')
denver = Gallery.new('meh', 'denver')
jazz = Gallery.new('jazzy town', 'dayton ohio')

painting1 = Painting.new('a duck', 50, jazz, vincent)
painting2 = Painting.new('a duck on a boat', 350, jazz, bubbles)
painting3 = Painting.new('a boat on sea of ducks', 500, ny, john)
painting4 = Painting.new('a ship', 30, denver, bubbles)

binding.pry

puts "Bob Ross rules."
