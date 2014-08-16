Then(/^I should see "(.*?)"$/) do |expectedText|
    page.should have_content(expectedText)
end
