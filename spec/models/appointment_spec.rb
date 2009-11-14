require 'spec_helper'

describe Appointment do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    Appointment.create!(@valid_attributes)
  end
end
