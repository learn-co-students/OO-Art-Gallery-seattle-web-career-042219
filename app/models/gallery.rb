class Gallery

  attr_reader :name, :city
  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end
  
  def paintings
    Painting.all.select{|paintings|
      paintings.gallery == self}
  end

  def artists
    Painting.all.map{|paintings|
      if paintings.gallery == self
        paintings.artist
      end
    }.compact
  end

  def artist_names
    self.artists.map{|artist|
      artist.name
    }
  end

  def most_expensive_painting
    Painting.all.map{|paintings|
      if paintings.gallery == self
        paintings.price
      end}.compact.max
  end

end
