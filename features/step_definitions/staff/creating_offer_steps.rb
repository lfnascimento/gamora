Given /^I am on offer form page$/ do
    visit new_staff_offer_path
end

When /^I fill up all form fields$/ do
  fill_in 'Advertiser name', with: 'walmart'
  fill_in 'Url', with: 'https://www.walmart.com/ps4-pro-offer'
  fill_in 'Description', with: 'PS4 Pro 10% offer'
end

And /^click "(.*?)"$/ do |button_name|
  find_button(button_name).click
end

Then /^should receive a message "(.*?)"$/ do |message|
  page.has_content?(message)
end
