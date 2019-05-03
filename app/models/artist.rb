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

  def create_painting(title, price, gallery)
    Painting.new(title, self, gallery, price)
  end

  def paintings
    Painting.all.select{|paintings|
      paintings.artist == self}
  end

  def galleries
    Painting.all.map{|paintings|
      if paintings.artist == self
        paintings.gallery
      end
    }.compact
  end

  def cities
    self.galleries.map{|gallery|
      gallery.city
    }
  end

  def self.total_experience
    @@all.map{|artists|
      artists.years_experience
    }.sum
  end
  
  # def self.most_prolific
  #    @@all.map{|artists|
  #    if artists.paintings.count != 0
  #     artists.years_experience / artists.paintings.count

  #    end
  #   }
  # end
end
