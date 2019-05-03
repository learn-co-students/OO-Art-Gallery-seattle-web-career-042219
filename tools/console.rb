require_relative '../config/environment.rb'


a1 = Artist.new('Caleb', 0)
a2 = Artist.new('Sean', 2)
a3 = Artist.new('Vadim', 2)
a4 = Artist.new('Bob', 100)

g1 = Gallery.new('Crappy Gallary', 'Seattle')
g2 = Gallery.new('Nice Place', 'New York')

a1.create_painting('Fancypants', 100, g2)
a1.create_painting('Dumb stuff', 5000, g1)
a2.create_painting('Sketches', 2000, g2)

binding.pry

puts "Bob Ross rules."
