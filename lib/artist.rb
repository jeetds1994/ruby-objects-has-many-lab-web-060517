class Artist

  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @@song_count += 1
    @songs << song
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
    @@song_count += 1

    @songs << new_song

  end
  def self.song_count
    @@song_count
  end
end
