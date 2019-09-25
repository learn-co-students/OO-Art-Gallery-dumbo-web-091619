
#   * `Artist.all`
#   * Returns an `array` of all the artists

# * `Artist#paintings`
#   * Returns an `array` all the paintings by an artist

# * `Artist#galleries`
#   * Returns an `array` of all the galleries that an artist has paintings in

# * `Artist#cities`
#   * Return an `array` of all cities that an artist has paintings in

# * `Artist.total_experience`
#   * Returns an `integer` that is the total years of experience of all artists

# * `Artist.most_prolific`
#   * Returns an `instance` of the artist with the highest amount of paintings per year of experience.

# * `Artist#create_painting`
#   * Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist

class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all # WORKS
  #   * Returns an `array` of all the artists
    @@all
  end

  def paintings # WORKS
  #   * Returns an `array` of all the artists
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries # WORKS
  #   * Returns an `array` of all the galleries that an artist has paintings in
    dirty_galleries_data = self.paintings.map do |painting|
      painting.gallery
    end
    dirty_galleries_data.uniq
  end

  def cities # WORKS
  #   * Return an `array` of all cities that an artist has paintings in
    self.galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_experience # WORKS
  #   * Returns an `integer` that is the total years of experience of all artists
    self.all.reduce(0) do |sum, artist|
      sum + artist.years_experience
    end
  end

  def self.most_prolific # WORKS
  #   * Returns an `instance` of the artist with the highest amount of paintings per year of experience.
    self.all.max_by do |artist|
      artist.paintings.length.to_f / artist.years_experience
    end
  end

  def create_painting(title, price, gallery) # WORKS
  #   * Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist
    Painting.new(title, price, self, gallery)
  end
  
end
