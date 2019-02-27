require 'pry'
class FindCityOrdinances::Scraper

  def get_page
    Nokogiri::HTML(open("https://library.municode.com/"))
  end

  def get_states
binding.pry
    self.get_page.css("li.col-xs-12 col-md-6 col-lg-4 text-center a").text
    #<li ng-repeat="state in stateGroup.states" class="col-xs-12 col-md-6 col-lg-4 text-center">
    #   <a href="https://library.municode.com/al" ng-href="https://library.municode.com/al">Alabama</a>
    # </li>
  end
end
