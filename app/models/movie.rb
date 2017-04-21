class Movie
  attr_accessor :title

  ALL = []

  def initialize(title)
    self.title = title
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_title(title)
    self.all.collect {|movie| movie if movie.title == title}
  end

  def ratings
    Rating.all.collect {|rating| rating if rating.movie == self}
  end

  def viewers
    Viewer.all.collect {|viewer| viewer if viewer.movie == self}
  end

  def self.average_rating

  end

# Movie.all

# Movie.find_by_title(title)

# Movie#ratings

# Movie#viewers

# Movie#average_rating


end
