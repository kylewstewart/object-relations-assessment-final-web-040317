# Please copy/paste all three classes into this file to submit your solution!
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
end

class Rating
  attr_accessor :movie, :score
  attr_reader :viewer

  ALL = []

  def initialize(movie, score, viewer)
    @movie = movie
    @score = score
    @viewer = viewer
    ALL << self
  end

  def self.all
    ALL
  end

end

class Viewer
  attr_accessor :first_name, :last_name
  attr_accessor :name

  ALL = []

  def initialize(name)
    @name = name
    # @first_name = Viewer.split_name(name)[:first]
    # @last_name = Viewer.split_name(name)[:last]
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    self.all.collect {|viewer| viewer if viewer.name == name}
  end

  def create_rating(movie, score)
    movie = Movie.new(movie)
    Rating.new(movie, score, self)
  end

  # def self.split_name(name)
  #   full_name = {}
  #   full_name[:first] = name.split[0]
  #   full_name[:last] = name.split[1]
  #   full_name
  # end


  def full_name
    "#{first_name} #{last_name}"
  end

end
