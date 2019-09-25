# issa connection babey

# * `Painting.all`
# * Returns an `array` of all the paintings

# * `Painting.total_price`
# * Returns an `integer` that is the total price of all paintings

class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all # WORKS
  # * Returns an `array` of all the paintings
    @@all
  end

  def self.total_price # WORKS
  # * Returns an `integer` that is the total price of all paintings
    self.all.reduce(0) do |sum, painting|
      sum + painting.price
    end
  end

end
