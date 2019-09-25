class Gallery
  @@all = [] 

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self

  end

  def self.all 
    @@all
  end

  def paintings
    Painting.all.select do |painting| 
      painting.gallery == self
    end
  end

  def artists 
    paintings.map(&:artist)
  end

  def artist_names 
    artists.map(&:name)
  end

  def most_expensive_painting
    self.paintings.max_by do |painting|
      painting.price
    end
  end

end
