class Song

  attr_accessor :song, :artist, :name

  def initialize(name)
    @song = song
    @artist = artist
    @name = name
  end

  def artist_name
    if artist == nil
      nil
    else
      artist.name
    #  binding.pry
     end
  end

end
