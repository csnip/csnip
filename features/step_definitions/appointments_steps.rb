Given /^a new request$/ do
  @appointment = Factory(:new_request)
end

Given /^a client goes to the appointment request page$/ do
  visit path_to("the home page")
end

Given /^I am logged in as an administrator$/ do
  @user = Factory(:user)
  visit path_to("the login page")
  fill_in(:login, :with => @user.login)
  fill_in(:password, :with => @user.password)
  click_button("Log in")
end

When /^I view the list of requests$/ do
  visit path_to("the appointments list page")  
end

Then /^I should see the new request$/ do
  Then "I should see \"#{@appointment.id}\" within \"td.id\""
end

When /^the client submits the appointment request form$/ do
  @appointment = Factory(:new_request)
  fill_in(:appointment_last_name, :with => @appointment.last_name)
  fill_in(:appointment_first_name, :with => @appointment.first_name)
  fill_in(:appointment_phone, :with => @appointment.phone)
  choose("appointment_pet_type_#{@appointment.pet_type}")
  fill_in(:appointment_age, :with => @appointment.age)
  fill_in(:appointment_pet_name, :with => @appointment.pet_name)
  click_button(:appointment_submit)
end

Then /^the status of the appointment should be (.*)$/ do |status|
  @appointment.current_status.should == status
end
