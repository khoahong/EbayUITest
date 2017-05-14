When(/^I search for a product by keyword "([^"]*)"$/) do |keyword|
  on(HomePage).search_box
  on(SearchPage).search_for_keyword(keyword)
end
