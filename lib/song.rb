class Song

  attr_accessor :artist, :name



  def initialize(song_name)
    @name = song_name
  end

  def artist=(artist_name)
    @artist = artist_name
  end

  def artist
    @artist
  end

  def artist_name
    if @artist == nil
      return nil
    else
      return @artist.name
    end
  end
end
