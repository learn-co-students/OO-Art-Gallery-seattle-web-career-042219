require 'pry'

class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |paint|
      paint.artist == self
    end
    #* Returns an `array` all the paintings by an artist
  end

  def galleries
    paintings.collect do |paint|
      paint.gallery
    end
    #* Returns an `array` of all the galleries that an artist has paintings in
  end

  def cities
    paintings.collect do |paint|
      paint.gallery.city
    end
    #* Return an `array` of all cities that an artist has paintings in
  end

  def self.total_experience
    @@all.collect do |art|
      art.years_experience
    end.sum
  end

  def self.most_prolific
    hash = {}
    Painting.all.select do |art|
      if hash[art.artist] == nil
        hash[art.artist] = 1
      else
        hash[art.artist] = hash[art.artist] + 1
      end
    end

    largest_num = 0
    max_art = nil
    hash.each do |k,v|
      if v/k.years_experience.to_f > largest_num
        largest_num = v/k.years_experience.to_f
        max_art = k
      end
    end
    max_art
    #* Returns an `instance` of the artist with the highest amount of paintings per year of experience.
  end

  def create_painting(title, price, gallery)
    new = Painting.new(title, price, self, gallery)
    #* Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist
  end

end
