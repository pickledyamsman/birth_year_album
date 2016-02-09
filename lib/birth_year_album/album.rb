class BirthYearAlbum::Album

  attr_accessor :name, :year, :artist

  def self.album_by_year(year)
    #should take in a year and return the album information.

    alb = self.new
    alb.year = year
    alb.name = "Born in the U.S.A."
    alb.artist = "Bruce Springsteen"
    alb
  end
end