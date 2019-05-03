require_relative '../config/environment.rb'

bob = Artist.new("Bob", 3)
dale = Artist.new("Dale", 10)
janet = Artist.new("Janet", 15)

g1 = Gallery.new("gal1", "New York")
g2 = Gallery.new("gal2", "Los Angeles")
g3 = Gallery.new("gal3", "San Francisco")

p1 = Painting.new("horse", 300, bob, g1)
p2 = Painting.new("car", 400, dale, g2)
p3 = Painting.new("bucket", 1000, janet, g1)
p4 = Painting.new("fruit", 500, dale, g3)
p5 = Painting.new("mountain", 2000, janet, g2)



binding.pry

puts "Bob Ross rules."
