class Tracks
  attr_accessor :artist
  attr_accessor :title
  attr_accessor :duration
  def initialize(artist, title, duration)
    @artist = artist
    @title = title
    @duration = duration
  end
end

barac_001 = Tracks.new("Barac", "Unreleased", 650)
barac_002 = Tracks.new("Barac", "Romania", 752)