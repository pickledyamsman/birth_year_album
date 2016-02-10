class BirthYearAlbum::Album

  attr_accessor :name, :year, :artist

  def self.album_by_year(year) #takes in a year and return the album information.
    page = self.get_page
    
    alb = self.new
    alb.year = year
    
    counter = 0
    while counter <= page.css("tr td").length-1  #iterates through all tr td except the final one because it is nil.
      if page.css("tr td")[counter].text.to_i == alb.year #compares year on page to album year
        alb.artist = page.css("tr td")[counter+1].text.split("!")[1] #assign artist
        alb.name = page.css("tr td")[counter+3].text.split("!")[1] #assign album name
      end
      counter += 1
    end
    alb
  end

  def self.get_page #scapes wikipedia
    doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/List_of_best-selling_albums_by_year_in_the_United_States"))
  end
end