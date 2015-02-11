Given(/^I am on the roof type page$/) do
  find('#pageSix').should be_visible
  page.should_not have_css('#pageFive')
end

When(/^I select flat roof$/) do
  find('#flatRoof').click
end

Then(/^I should see the photo page$/) do
  find('#pageEight').should be_visible
  page.should_not have_css('#pageSix')
  expect(Roof.first.angle).to eq 0
end

When(/^I select sloped roof$/) do
  find('#slopedRoof').click
end

Then(/^I should see the roof angle page$/) do
  find('#pageSeven').should be_visible
  page.should_not have_css('#pageSix')
end
