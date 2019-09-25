require_relative '../config/environment.rb'


artist1 = Artist.new('vincent', 6720)
artist2 = Artist.new('bubbles', 2)
artist3 = Artist.new('leo', 7)
artist4 = Artist.new('john', 1)


gallery1 = Gallery.new('nice place', 'new york')
gallery2 = Gallery.new('fancy place', 'paris')
gallery3 = Gallery.new('meh', 'denver')
gallery4 = Gallery.new('jazzy town', 'dayton ohio')

painting1 = Painting.new('a duck', 50, artist1, gallery1)
painting2 = Painting.new('a duck on a boat', 350, artist1, gallery2)
painting3 = Painting.new('a boat on sea of ducks', 500, artist2, gallery3)
painting4 = Painting.new('a ship', 5030, artist3, gallery3)

# p painting1
# p painting2
# p painting3 
# p painting4

p artist1.paintings.count
p artist1.galleries
p artist1.cities
p Artist.most_prolific
p Painting.total_price

p gallery3.most_expensive_painting
# binding.pry

puts "Bob Ross rules."
