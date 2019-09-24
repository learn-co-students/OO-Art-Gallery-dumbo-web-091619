class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    self.galleries.map { |painting| painting.gallery }
  end

  def cities
    self.galleries.map { |gallery| gallery.city }
  end

  def self.total_experience
    self.all.reduce(0) {|sum, artist| sum + artist.years_experience }
  end

  def self.most_prolific
    # self.all.sort_by { |artist| artist.paintings.length.to_f/artist.years_experience}
    self.all.max_by { |artist| artist.paintings.length.to_f/artist.years_experience}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end

  def self.all
    @@all
  end

end