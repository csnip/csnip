class Appointment < ActiveRecord::Base
  validates_presence_of :last_name, :first_name, :phone, :alternate_phone, :cat_or_dog, :gender, :age

  def name
    name = self.last_name.dup
    name << ", #{self.first_name}" unless self.first_name.blank?
    name
  end
end
