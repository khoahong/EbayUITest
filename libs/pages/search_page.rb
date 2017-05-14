class SearchPage
  include PageObject

  text_field(:search_plate, :id => 'search_plate')

  def search_for_keyword(keyword)
    self.search_plate = keyword
    ActionHelper.press_enter
  end
end
