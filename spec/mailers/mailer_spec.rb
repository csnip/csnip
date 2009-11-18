require 'spec_helper'

describe Mailer, 'appointment_submitted' do
  
  before(:each) do
    @appointment = mock_model(Appointment, :full_name => "John Doe", :pet_name => "Fluffy", :cat_or_dog => "dog", :phone => "6168675309")
    @url = "http://example.com/appointments/1"
    @email = Mailer.create_appointment_submitted(@appointment, @url)
  end
  
  it "addresses the email from the info address" do
    @email.from.should == ["info@csnip.org"]
  end
  
  it "addresses the email to the info address" do
    @email.to.should == ["info@csnip.org"]
  end
  
  it "sets the subject" do
    @email.subject.should == "New appointment request from John Doe for Fluffy"
  end
  
  it "includes the pet name in the body" do
    @email.body.should match(/Fluffy/)
  end
  
  it "includes the type of pet in the body" do
    @email.body.should match(/dog/)
  end
  
  it "includes the phone number in the body" do
    @email.body.should match(/6168675309/)
  end
  
  it "includes the url in the body" do
    @email.body.should match(/#{@url}/)
  end
  
end
