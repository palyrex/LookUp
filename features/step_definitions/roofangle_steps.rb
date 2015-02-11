Given(/^I am on the roof angle page and matched angle$/) do
  find('#pageSeven').should be_visible
  page.should_not have_css('#pageSix')
  click_on("Capture!")
end

Then(/^I should move to photo page$/) do
  find('#pageEight').should be_visible
  page.should_not have_css('#pageSeven')
end