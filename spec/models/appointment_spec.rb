require File.join(File.dirname(__FILE__), '..', 'spec_helper')

describe Appointment do
  before(:each) do
    @valid_attributes = {
      :last_name => 'Schneppy',
      :first_name => 'Tim',
      :phone => '4178552693',
      :cat_or_dog => 'cat',
      :gender => 'female',
      :age => 'about 3 years old',
      :pet_name => 'Bella'
    }
  end

  it "should set the acquired_from field on create" do
    appointment = Appointment.create!(@valid_attributes.merge(:acquired_from_type => 'stray'))
    appointment.acquired_from.should eql('stray')

    appointment = Appointment.create!(@valid_attributes.merge(:acquired_from_type => 'adopted'))
    appointment.acquired_from.should eql('adopted')

    appointment = Appointment.create!(@valid_attributes.merge(:acquired_from_type => 'other',
                                                              :acquired_from_other_description => 'my other description'))
    appointment.acquired_from.should eql('other: my other description')
  end
end
