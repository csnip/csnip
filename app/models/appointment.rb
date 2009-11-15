class Appointment < ActiveRecord::Base
  
  validates_presence_of :last_name, :first_name, :phone, :cat_or_dog, :gender, :age, :pet_name

  def person_attributes
    { :first_name => first_name, 
      :last_name => last_name, 
      :phone => phone, 
      :street => street,
      :city => city, 
      :postal_code => postal_code, 
      :county => county, 
      :alternate_phone => alternate_phone
    }
  end
  
  def name
    name = self.last_name.dup
    name << ", #{self.first_name}" unless self.first_name.blank?
    name
  end
  
  def full_name
    "#{first_name} #{last_name}"
  end
end
