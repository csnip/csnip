class Appointment < ActiveRecord::Base
  include AASM

  aasm_column :current_status
  
  aasm_initial_state :requested

  aasm_state :requested
  aasm_state :acknowledged
#  aasm_state :scheduled
  #  aasm_state :completed

  aasm_event :print do
    transitions :to => :acknowledged, :from => :requested
  end

  validates_presence_of :last_name, :first_name, :phone, :pet_type, :gender, :age, :pet_name
  attr_accessor :acquired_from_type, :acquired_from_other_description
  before_create :set_acquired_from
  
  named_scope :cats, :conditions => {:pet_type => "cat"}
  named_scope :dogs, :conditions => {:pet_type => "dog"}
  
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
  
  def client_name_last_comma_first
    [last_name, first_name].join(', ')
  end
  
  def client_full_name
    [first_name, last_name].join(' ')
  end
  
  def set_acquired_from
    if acquired_from_type == 'other'
      self.acquired_from = "other: #{acquired_from_other_description}"
    elsif acquired_from_type.blank?
      self.acquired_from = "none"
    else
      self.acquired_from = acquired_from_type
    end
  end

end
