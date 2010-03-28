Given /^a new request$/ do
  @appointment = Factory(:new_request)
end

Given /^I am logged in as an administrator$/ do
  @user = Factory(:user)
  visit path_to("the login page")
  fill_in(:login, :with => @user.login)
  fill_in(:password, :with => @user.password)
  click_button("Log in")
end

Given /^I am editing an appointment$/ do
  @appointment = Factory(:scheduled_appointment)
  visit edit_appointment_path(@appointment.id)
end

When /^I view the list of requests$/ do
  visit path_to("the appointments list page")  
end

Then /^I should see the new request$/ do
  response.should have_selector(:tr, :id => "appointment_#{@appointment.id}")
#  Then "I should see \"#{@appointment.id}\" within \"td.id\""
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
  @appointment.reload
  @appointment.current_status.should == status
end

When /^I print the list of new requests$/ do
  visit path_to("the appointments list page")
  check("appointment_checkbox_#{@appointment.id}")
  click_button(:print_submit)
  controller.params[:appointment_ids] = [@appointment.id]
  controller.confirm_print
  @appointment.reload
end

Given /^I view an appointment request$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I indicate that an appointment is scheduled$/ do
  click(:appointment_scheduled)
  click_button(:appointment_submit)
end

Given /^I view a scheduled appointment$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I indicate the appointment was attended$/ do
  pending # express the regexp above with the code you wish you had
end
