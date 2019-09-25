class Artist
  @@all = [] 
  attr_reader :name, :years_experience
  
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self

  end

  def self.all 
    @@all
  end

  def paintings
    Painting.all.select do |painting| 
      painting.artist == self
    end
  end

  def galleries 
    paintings.map(&:gallery)
  end

  def cities 
    galleries.map(&:city)
  end

  def create_painting(title, price,gallery)
    Painting.new(title, price, self, gallery)
  end

  def self.total_experience
    self.all.reduce (0) do |sum, artist| 
      sum + artist.years_experience
    end
  end

  def self.most_prolific
    self.all.max_by do |artist|
      artist.paintings.count.to_f / artist.years_experience
    end
  end

end
