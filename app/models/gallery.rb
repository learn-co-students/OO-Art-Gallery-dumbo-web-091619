# * `Gallery.all`
# * Returns an `array` of all the galleries

# * `Gallery#paintings`
# * Returns an `array` of all paintings in a gallery

# * `Gallery#artists`
# * Returns an `array` of all artists that have a painting in a gallery

# * `Gallery#artist_names`
# * Returns an `array` of the names of all artists that have a painting in a gallery

# * `Gallery#most_expensive_painting`
# * Returns an `instance` of the most expensive painting in a gallery


class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all # WORKS
  # * Returns an `array` of all the galleries
    @@all
  end

  def paintings # WORKS
  # * Returns an `array` of all the galleries
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists # WORKS
  # * Returns an `array` of all artists that have a painting in a gallery
    self.paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names # WORKS
  # * Returns an `array` of the names of all artists that have a painting in a gallery
    dirty_artists_data = self.artists.map do |artist|
      artist.name
    end
    dirty_artists_data.uniq
  end

  def most_expensive_painting # WORKS
  # * Returns an `instance` of the most expensive painting in a gallery
    self.paintings.max_by do |painting|
      painting.price
    end
  end

end
