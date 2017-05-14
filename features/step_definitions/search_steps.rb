When(/^I sort the product by price from "([^"]*)"$/) do |type|
  case type
    when 'Low to high'
      on(SearchResultPage).sort_by_price_low_to_high
    else
      raise 'Wrong type of sort!'
  end
end

When(/^I click on the first product in search result$/) do
  on(SearchResultPage).click_on_first_product
end
