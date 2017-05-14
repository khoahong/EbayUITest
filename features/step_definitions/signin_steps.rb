When(/^I fill in a random username in Username text field$/) do
  random_username = Faker::Name.first_name
  on(SignInPage).fill_in_username(random_username)
end

When(/I click on X button to close the SignInPage$/) do
  on(SignInPage).close_popup
end
