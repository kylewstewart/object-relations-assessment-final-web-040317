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
