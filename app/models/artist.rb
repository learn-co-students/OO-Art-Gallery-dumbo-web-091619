class Artist

  attr_reader :name, :years_experience
  attr_accessor :paintingss
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @paintingss = []
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    self.paintingss = Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    self.paintings.map(&:gallery)
  end

  def cities
    self.galleries.map(&:city)
  end

  def self.total_experience
    self.all.reduce(0){|sum, num| sum + num.total_experience}
  end

  def self.most_prolific
    max=self.all.map{|artist| artist.paintingss.length/artist.years_experience}.max
    self.all.find{|artist| artist.paintingss.count/artist.years_experience == max}
  end

end
