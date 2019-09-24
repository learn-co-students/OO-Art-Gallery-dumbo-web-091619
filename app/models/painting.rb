class Painting

  attr_reader :title, :price, :gallery, :artist

  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist

    @@all << self
  end

  def self.total_price
    self.all.reduce(0) { |sum, painting| sum + painting.price }
  end

  def self.all
    @@all
  end

end
