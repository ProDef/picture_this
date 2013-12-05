Given(/^I am on new photo$/) do
  visit '/photos/new'
end

Given(/^I have uploaded a new photo with titled "(.*?)" with text "(.*?)"$/) do |title, text|
visit '/photos/new'
  fill_in 'Title', :with => title
  fill_in 'Text', :with => text
  click_button ('add photo')
end

Then(/^I should see the title "(.*?)" and text "(.*?)"$/) do |title, text|
  page.should have_content(title)
  page.should have_content(text)
end