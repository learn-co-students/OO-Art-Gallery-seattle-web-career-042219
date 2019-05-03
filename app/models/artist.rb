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
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    self.paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    self.galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_experience
    self.all.sum do |artist|
      artist.years_experience
    end
  end

  def painting_count
    self.paintings.length
  end

  def self.most_prolific
    num = 0
    mp = nil
    self.all.each do |artist|
      if (artist.painting_count.to_f / artist.years_experience) > num
        mp = artist
        num = artist.painting_count.to_f / artist.years_experience
      end
    end
    mp
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
