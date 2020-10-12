class Gallery

  attr_reader :name, :city
  attr_accessor :paintings
  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
    @@paintings = []
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|painting| painting.gallery == self}
  end

  def artists
    self.paintings.map(&:artist)
  end

  def artist_names
    self.artists.map(&:name)
  end

  def most_expensive_painting
    max_price = self.paintings.map{|painting| painting.price}.max
    self.paintings.find{|painting| painting.price == max_price }
  end

  # .max_by{|painting| painting.price}

end
