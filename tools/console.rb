require_relative '../config/environment.rb'

a1=Artist.new("Emirhan", 1238)
a2=Artist.new("Rob", 1238)
a3=Artist.new("Bob Ross", 1238)
a4=Artist.new("Sena", 1238)

g1=Gallery.new("Istanbul Art Gallery", "Istanbul")
g2=Gallery.new("Koc Art Gallery", "Istanbul")
g3=Gallery.new("Kaplan Art Gallery", "Kars")

p1=Painting.new("A Tiger", 99000000, a1, g1)
p2=Painting.new("Meme", 178, a2, g2)
p3=Painting.new("A Lion", 990123123, a3, g3)
p4=Painting.new("Nihilist", 1000, a3, g2)
p5=Painting.new("asdad", 132, a2, g1)
p6=Painting.new("Stupid", 9900, a4, g1)
p7=Painting.new("Cardiona", 990, a4, g3)
p8=Painting.new("Parteson", 1999, a4, g3)
p9=Painting.new("A A a", 3999, a3, g2)



binding.pry

puts "Bob Ross rules."
