Then(/^"([^"]*)" is showing up$/) do |page|
  on(page).loaded?
end
