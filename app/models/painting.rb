class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(artist, gallery, price, title)
    @artist = artist
    @gallery = gallery
    @price = price
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.map do |painting|
      painting.price
    end.sum
  end

end
