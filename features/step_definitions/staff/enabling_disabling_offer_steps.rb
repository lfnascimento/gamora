Before { FactoryBot.create(:offer) }

Given /^I am on staff offers index page$/ do
  visit staff_offers_path
end

When /^I click "(.*?)" offer$/ do |link_name|
  find_link(link_name).click
end

Then /^offer status should be "(.*?)"$/ do |status|
  page.has_content?(status)
end
