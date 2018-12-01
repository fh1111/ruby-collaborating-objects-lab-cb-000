class Artist

  attr_accessor :name
  @@all = []

  def initialize (name)
    @name = name
    @songs = []

  end

  def add_song (song)
    @songs << song


  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)

    found = false
    @@all.each do |artist|
        if artist.name == name
          found = true
        end

    end
    if found == false
      artistnew = Artist.new(name)
      @@all << artistnew
      return artistnew
    end
  end

  def print_songs
    @songs.each do |son|
      puts "#{son.name}\n"
    end
  end

end
