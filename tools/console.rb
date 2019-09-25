require_relative '../config/environment.rb'

artist1 = Artist.new("Van Gogh", 13)
artist2 = Artist.new("Leonardo", 7)
artist3 = Artist.new("Rembrandt", 12)
artist4 = Artist.new("Bob Ross", 7)

gallery1 = Gallery.new("NYC Gallery", "Brooklyn, NY")
gallery2 = Gallery.new("The Louvre", "Paris, France")
gallery3 = Gallery.new("The Rijks", "Amsterdam, Holland")
gallery4 = Gallery.new("The Met", "Manhattan, NY")

painting1 = Painting.new("The Mona Lisa", 100000, artist2, gallery2 )
painting2 = Painting.new("The Death of Acttion", 150000, artist4, gallery2 )
painting3 = Painting.new("The Sunflower", 200000, artist1, gallery4 )
painting4 = Painting.new("Test painting", 250000, artist4, gallery3 )




binding.pry


=begin
Artist [independent]
@@all = []


Gallery [indepedent]




Painting [joiner]
@@all = []
initialize with (artist, gallery)

=end

puts "Bob Ross rules."
