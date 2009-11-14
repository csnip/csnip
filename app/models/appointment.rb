class Appointment < ActiveRecord::Base
  
  validates_presence_of :last_name, :first_name, :phone, :pet_name, :cat_or_dog, :gender, :age, :vaccinated, :pregnant
  
end
