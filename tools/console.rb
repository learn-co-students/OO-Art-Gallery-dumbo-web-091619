require_relative '../config/environment.rb'

## dummy data

# populate dummy artists
munch = Artist.new("Edvard Munch", 60)
schiele = Artist.new("Egon Schiele", 11)
el_greco = Artist.new("Doménikos Theotokópoulos", 47)

# populate dummy galleries
prado = Gallery.new("Museo Nacional del Prado", "Madrid")
leopold = Gallery.new("Leopold Museum", "Vienna")
tate = Gallery.new("Tate Modern", "London")
national = Gallery.new("The National Gallery of Art", "Washington D.C.")

# populate dummy paintings
# arg order: (title, price, artist, gallery)
nobleman = Painting.new("The Nobleman with his Hand on his Chest", 17, el_greco, prado)
shepherds = Painting.new("The Adoration of the Shepherds", 15, el_greco, prado)
laocoon = Painting.new("Laocoön", 13, el_greco, national)
angst = Painting.new("Angst", 12, munch, leopold)
sickness = Painting.new("Sickness", 8, munch, leopold)
child = Painting.new("The Sick Child", 10, munch, leopold)
hell = Painting.new("Self Portrait in Hell", 11, munch, leopold)
seated = Painting.new("Seated Male Nude", 17, schiele, leopold)
hermits = Painting.new("The Hermits", 20, schiele, leopold)
madonna = Painting.new("The Madonna", 30, munch, national)
geschrei = Painting.new("Geschrei", 50, munch, national)
martin = Painting.new("Saint Martin and the Beggar", 12, el_greco, national)
head = schiele.create_painting("Head of a Woman", 4, national)

# test methods

puts "Artist.all works?"
puts Artist.all.length == 3

puts "Gallery.all works?"
puts Gallery.all.length == 4

puts "Painting.all works?"
puts Painting.all.length == 13

puts "Painting.total_price works?"
puts Painting.total_price == 219

puts "gallery#paintings works?"
puts leopold.paintings.length == 6

puts "gallery#artists works?"
puts leopold.artists.length == 6

puts "gallery#artist_names works?"
puts leopold.artist_names
puts leopold.artist_names.length == 2

puts "gallery#most_expensive_painting works?"
puts national.most_expensive_painting == geschrei

puts "artist#paintings works?"
puts el_greco.paintings.length == 4

puts "artist#galleries works?"
puts el_greco.galleries.length == 2

puts "artist#cities works?"
puts el_greco.cities
puts el_greco.cities.length == 2

puts "Artist.total_experience works?"
puts Artist.total_experience == 118

puts "Artist.most_prolific works?"
puts Artist.most_prolific == schiele

puts "artist#create_painting works?"
puts head.artist == schiele

binding.pry

puts "Bob Ross rules."
