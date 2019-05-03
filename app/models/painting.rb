class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, artist, gallery, price)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.map{|paintings|
      paintings.price
    }.sum
  end

end
