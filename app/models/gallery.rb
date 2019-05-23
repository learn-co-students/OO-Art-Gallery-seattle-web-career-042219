class Gallery

  attr_reader :name, :city

  @@all= []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |paint|
      paint.gallery == self
    end
    #* Returns an `array` of all paintings in a gallery
  end

  def artists
    paintings.collect do |paint|
      paint.artist
    end
    #Returns an `array` of all artists that have a painting in a gallery
  end

  def artist_names
    artists.collect do |art|
      art.name
    end
    #* Returns an `array` of the names of all artists that have a painting in a gallery
  end

  def most_expensive_painting
    most_exp_title = nil
    highest_price = 0
    paintings.each do |paint|
      if paint.price > highest_price
        highest_price = paint.price
        most_exp_title = paint
      end
    end
    most_exp_title
    #* Returns an `instance` of the most expensive painting in a gallery
  end


end
