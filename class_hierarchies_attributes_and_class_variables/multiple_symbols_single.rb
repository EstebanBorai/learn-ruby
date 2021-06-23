class Movie
  attr_reader(:title, :description)
  attr_writer :rating

  def initialize(title, description, rating)
    @title = title
    @description = description
    @rating = rating
  end

  # override to_s from the Object class
  def to_s
    return "(Movie.to_s):: The #{@title} (Rating: #{@rating}) movie is #{@description}"
  end
end

once_upon_a_time_in_holywood = Movie.new(
  "Once Upon a Time in Holywood",
  "A movie by Quentin Tarantino with Leonardo DiCaprio and Brad Pitt",
  3.4
)

# The set method doesn't exists, uncomment this to test
# once_upon_a_time_in_holywood.title = "Foo"

once_upon_a_time_in_holywood.rating = 5.0

p once_upon_a_time_in_holywood
#<Movie:0x00007ff07c032680 @title="Once Upon a Time in Holywood", @description="A movie by Quentin Tarantino with Leonardo DiCaprio and Brad Pitt", @rating=5.0>

puts once_upon_a_time_in_holywood.to_s