Given /^appointment requests with the following phone numbers are filled out$/ do |table|
  @phone_numbers = []
  @phone_numbers = table.hashes
end

When /^it is submitted$/ do
# 
end

Then /^it should validate$/ do
  assert @phone_numbers.map {|p| p['Phone Number'].match(PHONE_NUMBER_REGEX) }
end

Then /^it should not validate$/ do
  assert @phone_numbers.map {|p| !p['Phone Number'].match(PHONE_NUMBER_REGEX) }
end
