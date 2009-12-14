Given /^an appointment$/ do
  @appointment = Factory(:appointment)
end

Given /^the appointment's address is:$/ do |table|
  @appointment.update_attributes(table.rows_hash)
end