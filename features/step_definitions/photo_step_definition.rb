Given(/^I am on new photo$/) do
  visit '/photos/new'
end

Given(/^I have uploaded a new photo with titled "(.*?)" with text "(.*?)"$/) do |title, text|
visit '/photos/new'
  fill_in 'Title', :with => title
  fill_in 'Text', :with => text
  click_button ('add photo')
end

Then(/^I should see the title "([^"]*?)" and text "([^"]*?)"$/) do |title, text|
  page.should have_content(title)
  page.should have_content(text)
end

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |field, text|
	fill_in field, with: text
end

Then(/^I should see the tag$/) do
  expect(page).to have_content 'My, tag'
end

Given(/^I have uploaded a new photo with title "(.*?)" with text "(.*?)" and tags "(.*?)"$/) do |title, text, tags|
  visit '/photos/new'
  fill_in 'Title', :with => title
  fill_in 'Text', :with => text
  fill_in 'Tag names', :with => tags
  click_button ('add photo')
end

Then(/^I should see the title "(.*?)" and text "(.*?)" and tags "(.*?)"$/) do |title, text, tags|
  page.should have_content(title)
  page.should have_content(text)
  page.should have_content(tags)
end