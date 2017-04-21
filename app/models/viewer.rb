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



# Viewr.all
# should return all of the viewers

# Viewer.find_by_name(name)
# given a string of a full name
# returns the first customer whose full name matches

# Viewer#create_rating
# given a score and a movie, creates a new Rating and associates it with that
# viewer and that movie




end
