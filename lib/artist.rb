require 'pry'
class Artist

  attr_accessor :name
  @@song_count = 0
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    if @@all.include?(self.name)
    else
      @@song_count += 1
    end
    @@all << self.name
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def add_song(song)
    #song = Song.new(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song)
    #has to be something in the array called name
    #artist.songs.name = rolling in the deep
    adele = Song.new(song)
    @songs << adele
    adele.artist = self
    adele.name = song
    self
#    binding.pry
  end

  def self.song_count
    @@song_count#.uniq.length.to_i
  end
end
