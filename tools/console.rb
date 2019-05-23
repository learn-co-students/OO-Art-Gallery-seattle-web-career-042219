require_relative '../config/environment.rb'



#gallery objects
best_gallery = Gallery.new("Best Gallery", "SF")
cool_gallery = Gallery.new("Cool Gallery", "NYC")
my_gallery = Gallery.new("My Gallery", "Bainbridge")


#Artis objects
warhol = Artist.new("Warhol", 5)
klimit = Artist.new("Klimit", 5)
munch = Artist.new("Munch",5)
laura = Artist.new("Laura", 5)

#painting object
scream = Painting.new("Scream", 2000, munch, best_gallery)
kiss = Painting.new("The Kiss", 3000, klimit, cool_gallery)
soup = Painting.new("Campbell Soup", 4000, warhol, my_gallery)
poop = Painting.new("Poop", 9000, laura, my_gallery)
brillo = Painting.new("Brillo Box", 100000000, warhol, best_gallery)
marilyn = Painting.new("Marilyn Monroe", 4000, warhol, my_gallery)
liz = Painting.new("Liz Taylor", 4000, warhol, my_gallery)
lou = Painting.new("Lou Reed", 4000, warhol, my_gallery)



Pry.start

puts "Bob Ross rules."
