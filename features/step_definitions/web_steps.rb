require 'capybara/cucumber'
Capybara.default_driver = :selenium

Given /^I am on the start page$/ do
  visit "http://localhost:4567/index.html"
end

When /^I click "([^"]*)"$/ do |text|
  page.find('a', text: text).click
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_selector('*', visible: true, text: text) 
end

