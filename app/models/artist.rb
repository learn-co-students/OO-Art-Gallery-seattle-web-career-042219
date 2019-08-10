class Artist

  attr_reader :name, :years_experience

  @@all=[]

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def create_painting(gallery, price, title)
    Painting.new(self, gallery, price, title)
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
    # returns an array of every painting object by an artist
  end

  def galleries
    paintings.map do |painting|
      painting.gallery
    end
    # returns an array of every painting object in this gallery
  end

  def cities
    galleries.map do |gallery|
      gallery.city
    end
    # returns an array of just city names
  end

  def self.total_experience
    self.all.map do |artist|
      artist.years_experience
    end.sum
    # returns just an integer
  end

  def self.most_prolific
    self.all.max_by do |artist|
      artist.paintings.length/artist.years_experience
    end
    # returns one artist object
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
