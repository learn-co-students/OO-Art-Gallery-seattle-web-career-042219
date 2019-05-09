class Gallery

  attr_reader :name, :city

  @@all =[]

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
    # returns an array of every painting Object in this gallery
  end

  def artists
    paintings.map do |painting|
      painting.artist
    end
    # returns an array of every artist object in this gallery
  end

  def artist_names
    artists.map do |artist|
      artist.name
    end
    # returns an array of just the names of the artists in this gallery
  end

  def most_expensive_painting
    paintings.max_by do |painting|
      painting.price
    end
    # returns one (not array) painting object of the most expensice painting in the gallery.
  end

end
