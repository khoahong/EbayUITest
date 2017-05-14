@Search
Feature: Search

  @search.search_with_guest_user
  Scenario: I search for a keyword, sort by price then watching the first result and come back to product description page
    When I search for a product by keyword "Samsung"
    And I sort the product by price from "Low to high"
    And I click on the first product in search result
    And I watch the product
    Then "SignInPage" is showing up
    When I fill in a random username in Username text field
    And I click on X button to close the SignInPage
