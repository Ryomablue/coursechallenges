class Album
  attr_accessor :title, :artist

  def initialize(title, artist)
    @title = title
    @artist = artist
  end

  def put_on
    puts "I'm putting on #{@title} by #{@artist}"
  end
end

class Song < Album

  def listen
    puts "I'm listening to #{@title} by #{@artist}"
  end
end

ham = Album.new("Hamilton", "Lin-Manuel Miranda")
ham.put_on

track = Song.new("My Shot", "Lin-Manuel Miranda")
track.listen

