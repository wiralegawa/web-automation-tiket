
Given("I am on the home page") do
  visit_page(HomePage)
end

When("I login with email {string} and password {string}") do |username, password|
  on_page(HomePage).loginWith username, password
end

Then("I go to Login Page") do
  on_page(HomePage).navigateToLogin
end

Then("I go to Train product landing page") do
  on_page(HomePage).navigateToTrain
end

Then("I enter destination with {string}") do |from|
  on_page(TrainSearchPage).enterDestination from
end