class FindCityOrdinances::Scraper

  def get_page
    Nokogiri::HTML(open("https://library.municode.com/"))
  end

end
