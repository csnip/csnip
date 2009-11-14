require 'spec_helper'

describe Appointment, "being valid" do
  
  it "requires last name" do
    appt = Appointment.new(:last_name => nil)
    appt.should_not be_valid
    appt.should have(1).error_on(:last_name)
  end
  
  it "requires first name" do
    appt = Appointment.new(:first_name => nil)
    appt.should_not be_valid
    appt.should have(1).error_on(:first_name)
  end
  
  it "requires phone number" do
    appt = Appointment.new(:phone => nil)
    appt.should_not be_valid
    appt.should have(1).error_on(:phone)
  end
  
  it "requires alternate phone number" do
    appt = Appointment.new(:alternate_phone => nil)
    appt.should_not be_valid
    appt.should have(1).error_on(:alternate_phone)
  end
  
  it "requires cat or dog" do
    appt = Appointment.new(:cat_or_dog => nil)
    appt.should_not be_valid
    appt.should have(1).error_on(:cat_or_dog)
  end
  
  it "requires gender" do
    appt = Appointment.new(:gender => nil)
    appt.should_not be_valid
    appt.should have(1).error_on(:gender)
  end
  
  it "requires age" do
    appt = Appointment.new(:age => nil)
    appt.should_not be_valid
    appt.should have(1).error_on(:age)
  end
  
  it "requires vaccinated" do
    appt = Appointment.new(:vaccinated => nil)
    appt.should_not be_valid
    appt.should have(1).error_on(:vaccinated)
  end
  
  it "requires pregnant" do
    appt = Appointment.new(:pregnant => nil)
    appt.should_not be_valid
    appt.should have(1).error_on(:pregnant)
  end
  
end
