require_relative '../config/environment.rb'

a1=Artist.new("VanGogh", 10)
a2=Artist.new("Monet", 11)
a3=Artist.new("Picasso", 12)

g1=Gallery.new("Al's", "Atlanta")
g2=Gallery.new("Bob's", "Boston")
g3=Gallery.new("Cal's", "Colombus")

Painting.new(a1, g1, 500, "Irises")
Painting.new(a2, g2, 600, "Rouen Cathedral")
Painting.new(a3, g3, 700, "Square Crap")
Painting.new(a1, g2, 800, "Starry Night on the Rhone")
Painting.new(a2, g3, 900, "Water Lillies")
Painting.new(a3, g1, 100, "Picasso was a hack")

binding.pry

puts "Bob Ross rules."
