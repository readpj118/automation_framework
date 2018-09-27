checkboxes = CheckboxesPage.new

Given(/^I visit the checkbox page$/) do
  visit('/checkboxes')
end

When(/^I tick the first checkbox$/) do
  expect(page).to have_text('Checkboxes')
  checkboxes.click_element(checkboxes.checkbox_one_xpath, 'Checkbox 1')
end

Then(/^the first checkbox is ticked$/) do
  expect(page.find(:xpath, checkboxes.checkbox_one_xpath).checked?).to equal true
end